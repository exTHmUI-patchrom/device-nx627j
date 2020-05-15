.class public Lcom/android/internal/telephony/AppSmsManager;
.super Ljava/lang/Object;
.source "AppSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSmsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/security/SecureRandom;

.field private final mTokenMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mRandom:Ljava/security/SecureRandom;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private addRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->token:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method private findAppRequestInfoSmsIntentLocked(Landroid/content/Intent;)Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 126
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 127
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    return-object v1

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v2, "fullMessageBuilder":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 132
    .local v5, "message":Landroid/telephony/SmsMessage;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 133
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v5    # "message":Landroid/telephony/SmsMessage;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "fullMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    return-object v1

    .line 145
    .end local v5    # "token":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 146
    :cond_5
    return-object v1
.end method

.method private generateNonce()Ljava/lang/String;
    .locals 2

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 151
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/internal/telephony/AppSmsManager;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 152
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method


# virtual methods
.method public createAppSpecificSmsToken(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 78
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/AppSmsManager;->generateNonce()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V

    .line 88
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;-><init>(Lcom/android/internal/telephony/AppSmsManager;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 89
    .local v3, "info":Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/AppSmsManager;->addRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V

    .line 90
    .end local v3    # "info":Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    monitor-exit v2

    .line 91
    return-object v1

    .line 90
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleSmsReceivedIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 100
    const-string v0, "AppSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got intent with incorrect action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppSmsManager;->findAppRequestInfoSmsIntentLocked(Landroid/content/Intent;)Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    move-result-object v1

    .line 106
    .local v1, "info":Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    if-nez v1, :cond_1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 111
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object v4, v1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v3    # "fillIn":Landroid/content/Intent;
    nop

    .line 120
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V

    .line 121
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 114
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V

    .line 117
    monitor-exit v0

    return v2

    .line 122
    .end local v1    # "info":Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
