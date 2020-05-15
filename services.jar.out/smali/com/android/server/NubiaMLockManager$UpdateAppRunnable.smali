.class Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;
.super Ljava/lang/Object;
.source "NubiaMLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaMLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAppRunnable"
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NubiaMLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;

    .line 599
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->mPkg:Ljava/lang/String;

    .line 601
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    :try_start_0
    invoke-static {}, Lcom/android/server/NubiaMLockManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "MLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->this$0:Lcom/android/server/NubiaMLockManager;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/NubiaMLockManager;->access$600(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0}, Lcom/android/server/NubiaMLockManager;->access$100(Lcom/android/server/NubiaMLockManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_0

    :catch_0
    move-exception v0

    .line 611
    :goto_0
    return-void
.end method
