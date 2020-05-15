.class Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field mListener:Lcom/android/server/policy/ISettingListener;

.field final synthetic this$0:Lcom/android/server/policy/NubiaPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/server/policy/ISettingListener;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/policy/ISettingListener;

    .line 34
    iput-object p1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/NubiaPhoneWindowManager;

    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/server/policy/ISettingListener;

    .line 37
    return-void
.end method


# virtual methods
.method observe()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/server/policy/ISettingListener;

    iget-object v1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/NubiaPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/NubiaPhoneWindowManager;->access$000(Lcom/android/server/policy/NubiaPhoneWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/server/policy/ISettingListener;->registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 42
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 46
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/server/policy/ISettingListener;

    invoke-interface {v0}, Lcom/android/server/policy/ISettingListener;->updateSettings()V

    .line 47
    return-void
.end method
