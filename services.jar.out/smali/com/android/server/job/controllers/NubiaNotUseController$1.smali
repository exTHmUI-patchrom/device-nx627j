.class Lcom/android/server/job/controllers/NubiaNotUseController$1;
.super Ljava/lang/Object;
.source "NubiaNotUseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/NubiaNotUseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/NubiaNotUseController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/NubiaNotUseController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 51
    iput-object p1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$1;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$1;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$000(Lcom/android/server/job/controllers/NubiaNotUseController;)V

    .line 55
    return-void
.end method
