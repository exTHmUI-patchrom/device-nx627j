.class Lcom/android/server/policy/BarController$2;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BarController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;

    .line 279
    iput-object p1, p0, Lcom/android/server/policy/BarController$2;->this$0:Lcom/android/server/policy/BarController;

    iput p2, p0, Lcom/android/server/policy/BarController$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/BarController$2;->this$0:Lcom/android/server/policy/BarController;

    iget v1, p0, Lcom/android/server/policy/BarController$2;->val$state:I

    invoke-static {v0, v1}, Lcom/android/server/policy/BarController;->access$200(Lcom/android/server/policy/BarController;I)V

    .line 283
    return-void
.end method
