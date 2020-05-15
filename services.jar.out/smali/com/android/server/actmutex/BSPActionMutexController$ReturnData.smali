.class Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
.super Ljava/lang/Object;
.source "BSPActionMutexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/actmutex/BSPActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReturnData"
.end annotation


# instance fields
.field isOpen:Z

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/actmutex/BSPActionMutexController;


# direct methods
.method public constructor <init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "is"    # Z

    .line 197
    iput-object p1, p0, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    .line 198
    iput-object p2, p0, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    .line 199
    iput-boolean p3, p0, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    .line 200
    return-void
.end method
