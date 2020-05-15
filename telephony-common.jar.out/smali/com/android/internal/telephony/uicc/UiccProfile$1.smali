.class Lcom/android/internal/telephony/uicc/UiccProfile$1;
.super Landroid/database/ContentObserver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$100(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    .line 146
    .end local v1    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method
