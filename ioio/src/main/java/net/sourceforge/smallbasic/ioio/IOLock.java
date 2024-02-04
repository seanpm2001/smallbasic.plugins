package net.sourceforge.smallbasic.ioio;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

import ioio.lib.api.exception.ConnectionLostException;
import ioio.lib.api.exception.IncompatibilityException;

public class IOLock<I> {
  private final Object mutex = new Object();
  private Consumer<I> consumer;

  public void invoke(Consumer<I> consumer) {
    CountDownLatch latch = beginLatch();
    synchronized (mutex) {
      this.consumer = (i) -> {
        consumer.accept(i);
        latch.countDown();
      };
    }
    endLatch(latch);
  }

  public float invoke(Function<Float, I> function) {
    CountDownLatch latch = beginLatch();
    AtomicReference<Float> result = new AtomicReference<>();
    synchronized (mutex) {
      this.consumer = (i) -> {
        result.set(function.apply(i));
        latch.countDown();
      };
    }
    endLatch(latch);
    return result.get();
  }

  public int invokeInt(Function<Integer, I> function) {
    CountDownLatch latch = beginLatch();
    AtomicReference<Integer> result = new AtomicReference<>();
    synchronized (mutex) {
      this.consumer = (i) -> {
        result.set(function.apply(i));
        latch.countDown();
      };
    }
    endLatch(latch);
    return result.get();
  }

  public void process(I input) {
    synchronized (mutex) {
      if (input != null && consumer != null) {
        try {
          consumer.accept(input);
        } catch (ConnectionLostException | InterruptedException | IncompatibilityException e) {
          throw new RuntimeException(e);
        }
        consumer = null;
      }
    }
  }

  /**
   * CountDownLatch ensures the calling method returns once process has completed
   */
  private CountDownLatch beginLatch() {
    return new CountDownLatch(1);
  }

  /**
   * Wait for the looper to process the next consumer
   */
  private void endLatch(CountDownLatch latch) {
    try {
      latch.await();
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    }
  }
}
