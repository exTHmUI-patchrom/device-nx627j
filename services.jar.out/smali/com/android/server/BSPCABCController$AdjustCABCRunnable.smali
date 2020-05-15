.class Lcom/android/server/BSPCABCController$AdjustCABCRunnable;
.super Ljava/lang/Object;
.source "BSPCABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustCABCRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method private constructor <init>(Lcom/android/server/BSPCABCController;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/android/server/BSPCABCController$AdjustCABCRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BSPCABCController;Lcom/android/server/BSPCABCController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BSPCABCController;
    .param p2, "x1"    # Lcom/android/server/BSPCABCController$1;

    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/BSPCABCController$AdjustCABCRunnable;-><init>(Lcom/android/server/BSPCABCController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/server/BSPCABCController$AdjustCABCRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$600(Lcom/android/server/BSPCABCController;)V

    .line 659
    return-void
.end method
