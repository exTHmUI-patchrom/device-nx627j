.class Lcom/android/server/NubiaMLockManager$2;
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

    .line 100
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager$2;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$2;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0}, Lcom/android/server/NubiaMLockManager;->access$200(Lcom/android/server/NubiaMLockManager;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$2;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0}, Lcom/android/server/NubiaMLockManager;->access$100(Lcom/android/server/NubiaMLockManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :goto_0
    return-void
.end method
