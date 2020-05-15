.class Lcom/android/server/location/GnssStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    .line 142
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/GnssStatusListenerHelper;->access$000(Lcom/android/server/location/GnssStatusListenerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    .local v0, "callingPid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->access$100(Lcom/android/server/location/GnssStatusListenerHelper;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    iget-wide v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    iget-object v3, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 152
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$5;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
