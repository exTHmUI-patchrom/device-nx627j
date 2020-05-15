.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reaper"
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private mMonitoringType:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareCallback;
    .param p3, "monitoringType"    # I

    .line 844
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 846
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 847
    return-void
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .param p3, "monitoringType"    # I

    .line 849
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 851
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 852
    return-void
.end method

.method static synthetic access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 839
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 839
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z

    move-result v0

    return v0
.end method

.method private binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z
    .locals 4
    .param p1, "left"    # Landroid/os/IInterface;
    .param p2, "right"    # Landroid/os/IInterface;

    .line 896
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 897
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 899
    :cond_1
    if-nez p2, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move v1, v0

    :goto_1
    return v1
.end method

.method private callbackEquals(Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 916
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unlinkToDeath()Z
    .locals 2

    .line 907
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    .line 909
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    .line 912
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 857
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 859
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 860
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 861
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 863
    .restart local v0    # "m":Landroid/os/Message;
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 864
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, "reaperMessage":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 882
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 883
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 885
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 886
    .local v2, "rhs":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v3, v2, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 887
    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iget v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    if-ne v3, v4, :cond_2

    .line 886
    move v0, v1

    goto :goto_0

    .line 887
    :cond_2
    nop

    .line 886
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 872
    const/16 v0, 0x11

    .line 873
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v2, v3

    .line 874
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v3, :cond_1

    .line 875
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    nop

    :cond_1
    add-int/2addr v0, v4

    .line 876
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    add-int/2addr v1, v2

    .line 877
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
