.class Lcom/android/server/wifi/ScoringParams$1;
.super Landroid/database/ContentObserver;
.source "ScoringParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScoringParams;->setupContentObserver(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScoringParams;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaults:Ljava/lang/String;

.field final synthetic val$facade:Lcom/android/server/wifi/FrameworkFacade;

.field final synthetic val$self:Lcom/android/server/wifi/ScoringParams;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoringParams;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScoringParams;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 240
    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$1;->this$0:Lcom/android/server/wifi/ScoringParams;

    iput-object p3, p0, Lcom/android/server/wifi/ScoringParams$1;->val$facade:Lcom/android/server/wifi/FrameworkFacade;

    iput-object p4, p0, Lcom/android/server/wifi/ScoringParams$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/wifi/ScoringParams$1;->val$self:Lcom/android/server/wifi/ScoringParams;

    iput-object p6, p0, Lcom/android/server/wifi/ScoringParams$1;->val$defaults:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$1;->val$facade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$1;->val$context:Landroid/content/Context;

    const-string v2, "wifi_score_params"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/FrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$1;->val$self:Lcom/android/server/wifi/ScoringParams;

    iget-object v2, p0, Lcom/android/server/wifi/ScoringParams$1;->val$defaults:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ScoringParams;->update(Ljava/lang/String;)Z

    .line 246
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$1;->val$self:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/ScoringParams;->update(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const-string v1, "WifiScoringParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in wifi_score_params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/ScoringParams$1;->this$0:Lcom/android/server/wifi/ScoringParams;

    .line 248
    invoke-virtual {v3, v0}, Lcom/android/server/wifi/ScoringParams;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const-string v1, "WifiScoringParams"

    iget-object v2, p0, Lcom/android/server/wifi/ScoringParams$1;->val$self:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScoringParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method
