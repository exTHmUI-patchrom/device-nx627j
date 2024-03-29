.class Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mResult:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2944
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    .line 2946
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 2943
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)Ljava/util/concurrent/SynchronousQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 2943
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    return-object v0
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .line 2964
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 2

    .line 2969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2970
    :catch_0
    move-exception v0

    .line 2971
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
