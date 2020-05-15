.class public Landroid/hardware/radio/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo;,
        Landroid/hardware/radio/RadioManager$AmBandConfig;,
        Landroid/hardware/radio/RadioManager$FmBandConfig;,
        Landroid/hardware/radio/RadioManager$BandConfig;,
        Landroid/hardware/radio/RadioManager$AmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$FmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$BandDescriptor;,
        Landroid/hardware/radio/RadioManager$ModuleProperties;,
        Landroid/hardware/radio/RadioManager$ConfigFlag;,
        Landroid/hardware/radio/RadioManager$Band;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_AM_HD:I = 0x3

.field public static final BAND_FM:I = 0x1

.field public static final BAND_FM_HD:I = 0x2

.field public static final BAND_INVALID:I = -0x1

.field public static final CLASS_AM_FM:I = 0x0

.field public static final CLASS_DT:I = 0x2

.field public static final CLASS_SAT:I = 0x1

.field public static final CONFIG_DAB_DAB_LINKING:I = 0x6

.field public static final CONFIG_DAB_DAB_SOFT_LINKING:I = 0x8

.field public static final CONFIG_DAB_FM_LINKING:I = 0x7

.field public static final CONFIG_DAB_FM_SOFT_LINKING:I = 0x9

.field public static final CONFIG_FORCE_ANALOG:I = 0x2

.field public static final CONFIG_FORCE_DIGITAL:I = 0x3

.field public static final CONFIG_FORCE_MONO:I = 0x1

.field public static final CONFIG_RDS_AF:I = 0x4

.field public static final CONFIG_RDS_REG:I = 0x5

.field public static final REGION_ITU_1:I = 0x0

.field public static final REGION_ITU_2:I = 0x1

.field public static final REGION_JAPAN:I = 0x3

.field public static final REGION_KOREA:I = 0x4

.field public static final REGION_OIRT:I = 0x2

.field public static final STATUS_BAD_VALUE:I = -0x16

.field public static final STATUS_DEAD_OBJECT:I = -0x20

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I = -0x26

.field public static final STATUS_NO_INIT:I = -0x13

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PERMISSION_DENIED:I = -0x1

.field public static final STATUS_TIMED_OUT:I = -0x6e

.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.manager"


# instance fields
.field private final mAnnouncementListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            "Landroid/hardware/radio/ICloseHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    .line 1845
    iput-object p1, p0, Landroid/hardware/radio/RadioManager;->mContext:Landroid/content/Context;

    .line 1846
    const-string v0, "broadcastradio"

    .line 1847
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1846
    invoke-static {v0}, Landroid/hardware/radio/IRadioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    .line 1848
    return-void
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$addAnnouncementListener$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "cmd"    # Ljava/lang/Runnable;

    .line 1788
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private native nativeListModules(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public addAnnouncementListener(Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/hardware/radio/Announcement$OnListUpdatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            ")V"
        }
    .end annotation

    .line 1788
    .local p1, "enabledAnnouncementTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/radio/-$$Lambda$RadioManager$cfMLnpQqL72UMrjmCGbrhAOHHgg;->INSTANCE:Landroid/hardware/radio/-$$Lambda$RadioManager$cfMLnpQqL72UMrjmCGbrhAOHHgg;

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/radio/RadioManager;->addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V

    .line 1789
    return-void
.end method

.method public addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/radio/Announcement$OnListUpdatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            ")V"
        }
    .end annotation

    .line 1802
    .local p2, "enabledAnnouncementTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$$Lambda$RadioManager$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/hardware/radio/-$$Lambda$RadioManager$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1805
    .local v0, "types":[I
    new-instance v1, Landroid/hardware/radio/RadioManager$1;

    invoke-direct {v1, p0, p1, p3}, Landroid/hardware/radio/RadioManager$1;-><init>(Landroid/hardware/radio/RadioManager;Ljava/util/concurrent/Executor;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V

    .line 1810
    .local v1, "listenerIface":Landroid/hardware/radio/IAnnouncementListener;
    iget-object v2, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    monitor-enter v2

    .line 1811
    const/4 v3, 0x0

    .line 1813
    .local v3, "closeHandle":Landroid/hardware/radio/ICloseHandle;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v4, v0, v1}, Landroid/hardware/radio/IRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 1816
    goto :goto_0

    .line 1820
    .end local v3    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1814
    .restart local v3    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    :catch_0
    move-exception v4

    .line 1815
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1817
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v4, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/ICloseHandle;

    .line 1819
    .local v4, "oldCloseHandle":Landroid/hardware/radio/ICloseHandle;
    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/hardware/radio/Utils;->close(Landroid/hardware/radio/ICloseHandle;)V

    .line 1820
    .end local v3    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    .end local v4    # "oldCloseHandle":Landroid/hardware/radio/ICloseHandle;
    :cond_0
    monitor-exit v2

    .line 1821
    return-void

    .line 1820
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public listModules(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 1712
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    if-nez p1, :cond_0

    .line 1713
    const-string v0, "BroadcastRadio.manager"

    const-string/jumbo v1, "the output list must not be empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/16 v0, -0x16

    return v0

    .line 1717
    :cond_0
    const-string v0, "BroadcastRadio.manager"

    const-string v1, "Listing available tuners..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v0}, Landroid/hardware/radio/IRadioService;->listModules()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .local v0, "returnedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    nop

    .line 1723
    nop

    .line 1726
    if-nez v0, :cond_1

    .line 1727
    const-string v1, "BroadcastRadio.manager"

    const-string v2, "Returned list was a null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/high16 v1, -0x80000000

    return v1

    .line 1731
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1732
    const/4 v1, 0x0

    return v1

    .line 1721
    .end local v0    # "returnedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.manager"

    const-string v2, "Failed listing available tuners"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    const/16 v1, -0x20

    return v1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;
    .locals 5
    .param p1, "moduleId"    # I
    .param p2, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 1754
    if-eqz p4, :cond_2

    .line 1758
    const-string v0, "BroadcastRadio.manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening tuner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    new-instance v0, Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-direct {v0, p4, p5}, Landroid/hardware/radio/TunerCallbackAdapter;-><init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    .line 1763
    .local v0, "halCallback":Landroid/hardware/radio/TunerCallbackAdapter;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v2, p1, p2, p3, v0}, Landroid/hardware/radio/IRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    .local v2, "tuner":Landroid/hardware/radio/ITuner;
    nop

    .line 1766
    nop

    .line 1768
    if-nez v2, :cond_0

    .line 1769
    const-string v3, "BroadcastRadio.manager"

    const-string v4, "Failed to open tuner"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return-object v1

    .line 1772
    :cond_0
    new-instance v1, Landroid/hardware/radio/TunerAdapter;

    .line 1773
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-direct {v1, v2, v0, v3}, Landroid/hardware/radio/TunerAdapter;-><init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V

    .line 1772
    return-object v1

    .line 1764
    .end local v2    # "tuner":Landroid/hardware/radio/ITuner;
    :catch_0
    move-exception v2

    .line 1765
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "BroadcastRadio.manager"

    const-string v4, "Failed to open tuner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1766
    return-object v1

    .line 1755
    .end local v0    # "halCallback":Landroid/hardware/radio/TunerCallbackAdapter;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAnnouncementListener(Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    .line 1831
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    iget-object v0, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1833
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ICloseHandle;

    .line 1834
    .local v1, "closeHandle":Landroid/hardware/radio/ICloseHandle;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/hardware/radio/Utils;->close(Landroid/hardware/radio/ICloseHandle;)V

    .line 1835
    .end local v1    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    :cond_0
    monitor-exit v0

    .line 1836
    return-void

    .line 1835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
