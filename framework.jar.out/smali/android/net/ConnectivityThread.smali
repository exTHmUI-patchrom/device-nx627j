.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "ConnectivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityThread$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    const-string v0, "ConnectivityThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()Landroid/net/ConnectivityThread;
    .locals 1

    .line 29
    invoke-static {}, Landroid/net/ConnectivityThread;->createInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method private static createInstance()Landroid/net/ConnectivityThread;
    .locals 1

    .line 44
    new-instance v0, Landroid/net/ConnectivityThread;

    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    .line 45
    .local v0, "t":Landroid/net/ConnectivityThread;
    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->start()V

    .line 46
    return-object v0
.end method

.method public static get()Landroid/net/ConnectivityThread;
    .locals 1

    .line 50
    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->access$100()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceLooper()Landroid/os/Looper;
    .locals 1

    .line 54
    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->access$100()Landroid/net/ConnectivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
