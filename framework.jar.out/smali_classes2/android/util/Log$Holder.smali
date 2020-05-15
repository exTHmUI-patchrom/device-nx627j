.class Landroid/util/Log$Holder;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static PROXY:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "log_cta_print"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/util/Log$Holder;->PROXY:Landroid/os/Handler;

    .line 179
    .end local v0    # "thread":Landroid/os/HandlerThread;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 173
    sget-object v0, Landroid/util/Log$Holder;->PROXY:Landroid/os/Handler;

    return-object v0
.end method
