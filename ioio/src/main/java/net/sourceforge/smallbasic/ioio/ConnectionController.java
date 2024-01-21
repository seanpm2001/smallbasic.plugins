package net.sourceforge.smallbasic.ioio;

import ioio.lib.util.IOIOBaseApplicationHelper;
import ioio.lib.util.IOIOConnectionManager;
import ioio.lib.util.IOIOConnectionRegistry;
import ioio.lib.util.IOIOLooperProvider;

public class ConnectionController extends IOIOBaseApplicationHelper {
  private final IOIOConnectionManager manager = new IOIOConnectionManager(this);

  static {
    IOIOConnectionRegistry.addBootstraps(new String[]{
        "ioio.lib.pc.SerialPortIOIOConnectionBootstrap"
      });
    /*
      IOIOConnectionRegistry.addBootstraps(new String[]{
      "ioio.lib.impl.SocketIOIOConnectionBootstrap",
      "ioio.lib.android.accessory.AccessoryConnectionBootstrap",
      "ioio.lib.android.bluetooth.BluetoothIOIOConnectionBootstrap",
      "ioio.lib.android.device.DeviceConnectionBootstrap"});
    */
  }

  public ConnectionController(IOIOLooperProvider provider) {
    super(provider);
  }

  public void start() {
    manager.start();
  }

  public void stop() {
    manager.stop();
  }
}
