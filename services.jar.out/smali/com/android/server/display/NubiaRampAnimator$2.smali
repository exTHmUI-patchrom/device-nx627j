.class Lcom/android/server/display/NubiaRampAnimator$2;
.super Landroid/database/ContentObserver;
.source "NubiaRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaRampAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 288
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$2;, "Lcom/android/server/display/NubiaRampAnimator$2;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 291
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$2;, "Lcom/android/server/display/NubiaRampAnimator$2;"
    if-nez p2, :cond_0

    .line 292
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$700(Lcom/android/server/display/NubiaRampAnimator;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x0

    move v2, v0

    .line 299
    .local v2, "curDcSwitch":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v3}, Lcom/android/server/display/NubiaRampAnimator;->access$800(Lcom/android/server/display/NubiaRampAnimator;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_flash_eye_protection"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    move v2, v0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NubiaLayer get url nubia_flash_eye_protection failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curDcSwitch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDcSwitch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$200(Lcom/android/server/display/NubiaRampAnimator;I)V

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const-wide/16 v3, 0x1f4

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/display/NubiaRampAnimator;->access$500(Lcom/android/server/display/NubiaRampAnimator;IJ)V

    .line 309
    .end local v2    # "curDcSwitch":Z
    :goto_1
    goto :goto_2

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$1000(Lcom/android/server/display/NubiaRampAnimator;I)V

    goto :goto_2

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$1100(Lcom/android/server/display/NubiaRampAnimator;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$2;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$1000(Lcom/android/server/display/NubiaRampAnimator;I)V

    .line 315
    :cond_5
    :goto_2
    return-void
.end method
