package net.sourceforge.smallbasic.ioio;

import java.io.IOException;

import ioio.lib.api.IOIO;
import ioio.lib.api.SpiMaster;
import ioio.lib.api.exception.ConnectionLostException;
import ioio.lib.spi.Log;

public class SpiMasterImpl extends IOTask {
  private static final String TAG = "SpiMasterImpl";
  private final IOLock<SpiMaster> lock = new IOLock<>();
  private SpiMaster spiMaster = null;
  private int miso;
  private int mosi;
  private int clk;
  private int slaveSelect;

  public SpiMasterImpl() {
    super();
    Log.i(TAG, "created");
  }

  public void open(int miso, int mosi, int clk, int slaveSelect) throws IOException {
    super.open(miso);
    this.miso = miso;
    this.mosi = mosi;
    this.clk = clk;
    this.slaveSelect = slaveSelect;
  }

  public void write(int address, int data) {
    handleError();
    lock.invoke((i) -> {
      byte[] buffer = {(byte) address, (byte) data};
      spiMaster.writeRead(buffer, buffer.length, buffer.length, null, 0);
    });
  }

  @Override
  void loop() throws ConnectionLostException, InterruptedException {
    lock.process(spiMaster);
  }

  @Override
  void setup(IOIO ioio) throws ConnectionLostException {
    Log.i(TAG, "setup entered: " + miso + " " + mosi + " " + clk + " " + slaveSelect);
    spiMaster = ioio.openSpiMaster(miso, mosi, clk, slaveSelect, SpiMaster.Rate.RATE_1M);
  }
}