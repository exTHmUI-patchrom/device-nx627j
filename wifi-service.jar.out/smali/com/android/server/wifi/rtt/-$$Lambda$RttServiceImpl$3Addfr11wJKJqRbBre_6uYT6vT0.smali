.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field private final synthetic f$1:Landroid/os/WorkSource;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/IBinder;

.field private final synthetic f$4:Landroid/os/IBinder$DeathRecipient;

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:Landroid/net/wifi/rtt/RangingRequest;

.field private final synthetic f$7:Landroid/net/wifi/rtt/IRttCallback;

.field private final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$3:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$4:Landroid/os/IBinder$DeathRecipient;

    iput-object p6, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$6:Landroid/net/wifi/rtt/RangingRequest;

    iput-object p8, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$7:Landroid/net/wifi/rtt/IRttCallback;

    iput-boolean p9, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$2:I

    iget-object v3, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$3:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$4:Landroid/os/IBinder$DeathRecipient;

    iget-object v5, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$6:Landroid/net/wifi/rtt/RangingRequest;

    iget-object v7, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$7:Landroid/net/wifi/rtt/IRttCallback;

    iget-boolean v8, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$3Addfr11wJKJqRbBre_6uYT6vT0;->f$8:Z

    invoke-static/range {v0 .. v8}, Lcom/android/server/wifi/rtt/RttServiceImpl;->lambda$startRanging$3(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V

    return-void
.end method
