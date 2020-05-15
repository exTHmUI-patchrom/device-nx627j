.class Lcn/nubia/server/appmgmt/EyeProtectionController$6;
.super Ljava/lang/Object;
.source "EyeProtectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 295
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 299
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, "invertColors":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, "daltonColor":I
    invoke-static {}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EyeProtectionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startImageEnhanceService invertColors ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", daltonColor ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 303
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1600(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$6;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1900(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/content/Context;)V

    .line 306
    :cond_1
    const-string v2, "EyeProtectionController"

    const-string v3, "handleScreenChanged success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "invertColors":I
    .end local v1    # "daltonColor":I
    :cond_2
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EyeProtectionController"

    const-string/jumbo v2, "startImageEnhanceService error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
