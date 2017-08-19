package com.prodevans.zeno.pojo;

public class SessionHistory {
	private long totalbytes;
	private long duration;
	private long bytesin;
	private long bytesout;

	/**
	 * @param totalbytes
	 * @param duration
	 * @param bytesin
	 * @param bytesout
	 */
	public SessionHistory(long totalbytes, long duration, long bytesin, long bytesout) {
		this.totalbytes = totalbytes;
		this.duration = duration;
		this.bytesin = bytesin;
		this.bytesout = bytesout;
	}

	/**
	 * 
	 */
	public SessionHistory() {
		this.totalbytes = 0;
		this.duration = 0;
		this.bytesin = 0;
		this.bytesout = 0;
	}

	/**
	 * @return the totalbytes
	 */
	public long getTotalbytes() {
		return totalbytes;
	}

	/**
	 * @param totalbytes
	 *            the totalbytes to set
	 */
	public void setTotalbytes(long totalbytes) {
		this.totalbytes = (totalbytes / (1024 * 1024 * 1024));
	}

	/**
	 * @return the duration
	 */
	public long getDuration() {
		return duration;
	}

	/**
	 * @param duration
	 *            the duration to set
	 */
	public void setDuration(long duration) {
		this.duration = duration;
	}

	/**
	 * @return the bytesin
	 */
	public long getBytesin() {
		return bytesin;
	}

	/**
	 * @param bytesin
	 *            the bytesin to set
	 */
	public void setBytesin(long bytesin) {
		this.bytesin = (bytesin / (1024 * 1024 * 1024));
	}

	/**
	 * @return the bytesout
	 */
	public long getBytesout() {
		return bytesout;
	}

	/**
	 * @param bytesout
	 *            the bytesout to set
	 */
	public void setBytesout(long bytesout) {
		this.bytesout = (bytesout / (1024 * 1024 * 1024));
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "SessionHistory [totalbytes=" + totalbytes + ", duration=" + duration + ", bytesin=" + bytesin
				+ ", bytesout=" + bytesout + "]";
	}

}
