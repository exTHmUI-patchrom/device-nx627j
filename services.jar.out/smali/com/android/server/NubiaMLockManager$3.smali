.class Lcom/android/server/NubiaMLockManager$3;
.super Ljava/lang/Object;
.source "NubiaMLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaMLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaMLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaMLockManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaMLockManager;

    .line 110
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager$3;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$3;->this$0:Lcom/android/server/NubiaMLockManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NubiaMLockManager;->access$300(Lcom/android/server/NubiaMLockManager;Z)V

    .line 114
    return-void
.end method
