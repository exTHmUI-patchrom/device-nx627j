.class Landroid/os/CommonClock$TimelineChangedListener;
.super Landroid/os/Binder;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineChangedListener"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICommonClockListener"


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method private constructor <init>(Landroid/os/CommonClock;)V
    .locals 0

    .line 314
    iput-object p1, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/CommonClock;
    .param p2, "x1"    # Landroid/os/CommonClock$1;

    .line 314
    invoke-direct {p0, p1}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 320
    :cond_0
    const-string v1, "android.os.ICommonClockListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 322
    .local v1, "timelineId":J
    iget-object v3, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v3}, Landroid/os/CommonClock;->access$000(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 323
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v4}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 324
    iget-object v4, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v4}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/os/CommonClock$OnTimelineChangedListener;->onTimelineChanged(J)V

    .line 325
    :cond_1
    monitor-exit v3

    .line 326
    return v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
