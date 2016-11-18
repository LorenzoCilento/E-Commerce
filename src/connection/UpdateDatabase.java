package connection;


public class UpdateDatabase extends Thread {

	@Override
	public void run() {
		super.run();
	
		try {
			QueryUpdateDatabase.class.newInstance().getItemInBid();
			QueryUpdateDatabase.class.newInstance().deleteAllItemWithAuctionClosed();
			
			try {
				sleep(60*60);
			} catch (InterruptedException e) {
			}
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
}
