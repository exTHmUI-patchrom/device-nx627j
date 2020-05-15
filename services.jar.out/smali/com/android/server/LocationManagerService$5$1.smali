.class Lcom/android/server/LocationManagerService$5$1;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService$5;->onUidImportance(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LocationManagerService$5;

.field final synthetic val$importance:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService$5;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/LocationManagerService$5;

    .line 359
    iput-object p1, p0, Lcom/android/server/LocationManagerService$5$1;->this$1:Lcom/android/server/LocationManagerService$5;

    iput p2, p0, Lcom/android/server/LocationManagerService$5$1;->val$uid:I

    iput p3, p0, Lcom/android/server/LocationManagerService$5$1;->val$importance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/server/LocationManagerService$5$1;->this$1:Lcom/android/server/LocationManagerService$5;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$5;->this$0:Lcom/android/server/LocationManagerService;

    iget v1, p0, Lcom/android/server/LocationManagerService$5$1;->val$uid:I

    iget v2, p0, Lcom/android/server/LocationManagerService$5$1;->val$importance:I

    invoke-static {v0, v1, v2}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;II)V

    .line 363
    return-void
.end method
