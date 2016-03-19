package com.cbs.app.livetv.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import java.util.ArrayList;
import java.util.List;

public class LiveTvChannel
  implements Parcelable
{
  public static final Parcelable.Creator<LiveTvChannel> CREATOR = new Parcelable.Creator() {};
  private Affiliate a;
  private List<SyncbakSchedule> b;
  private SyncbakChannel c;
  private boolean d;
  
  public LiveTvChannel()
  {
    a = null;
    b = null;
    c = null;
    d = false;
  }
  
  public LiveTvChannel(Parcel paramParcel)
  {
    a = ((Affiliate)paramParcel.readParcelable(Affiliate.class.getClassLoader()));
    b = new ArrayList();
    paramParcel.readList(b, SyncbakSchedule.class.getClassLoader());
    c = ((SyncbakChannel)paramParcel.readParcelable(SyncbakChannel.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Affiliate getAffiliate()
  {
    return a;
  }
  
  public SyncbakChannel getChannel()
  {
    return c;
  }
  
  public boolean getIsMvpd()
  {
    return d;
  }
  
  public List<SyncbakSchedule> getPrograms()
  {
    return b;
  }
  
  public void setAffiliate(Affiliate paramAffiliate)
  {
    a = paramAffiliate;
  }
  
  public void setChannel(SyncbakChannel paramSyncbakChannel)
  {
    c = paramSyncbakChannel;
  }
  
  public void setIsMvpd(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setPrograms(List<SyncbakSchedule> paramList)
  {
    b = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeList(b);
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.model.LiveTvChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */