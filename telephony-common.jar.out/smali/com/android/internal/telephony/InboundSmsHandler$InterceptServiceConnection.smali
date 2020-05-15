.class Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptServiceConnection"
.end annotation


# instance fields
.field public mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 1779
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1781
    .local p1, "intent":Landroid/content/Intent;
    const-string v0, "cn.nubia.harassintercept.action.InterceptService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    const-string v0, "cn.nubia.harassintercept"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1784
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "mInterceptService != null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    invoke-interface {v0, p1}, Lcn/nubia/harassintercept/service/IInterceptService;->addName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :cond_0
    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "InterceptService Exception while adding name to sms"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "return null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1815
    return-void
.end method

.method dispose(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1787
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1790
    :cond_0
    return-void
.end method

.method public isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1794
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "mInterceptService != null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    invoke-interface {v0, p1}, Lcn/nubia/harassintercept/service/IInterceptService;->isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1800
    :cond_0
    goto :goto_0

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "Exception identifying new sms is spam sms or not"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1801
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "return null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1802
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1769
    invoke-static {p2}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/harassintercept/service/IInterceptService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "Intercept service connected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "Intercept service disconnected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1777
    return-void
.end method
