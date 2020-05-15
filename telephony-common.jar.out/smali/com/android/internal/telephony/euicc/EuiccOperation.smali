.class public Lcom/android/internal/telephony/euicc/EuiccOperation;
.super Ljava/lang/Object;
.source "EuiccOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccOperation$Action;
    }
.end annotation


# static fields
.field static final ACTION_DOWNLOAD_CONFIRMATION_CODE:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_DEACTIVATE_SIM:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_NO_PRIVILEGES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_DEFAULT_LIST_DEACTIVATE_SIM:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_METADATA_DEACTIVATE_SIM:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_SWITCH_DEACTIVATE_SIM:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_SWITCH_NO_PRIVILEGES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EuiccOperation"


# instance fields
.field public final mAction:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingToken:J

.field private final mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field private final mSubscriptionId:I

.field private final mSwitchAfterDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccOperation$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "callingToken"    # J
    .param p4, "downloadableSubscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p5, "subscriptionId"    # I
    .param p6, "switchAfterDownload"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 168
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 169
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 170
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 171
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 172
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 173
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 178
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private static fail(Landroid/app/PendingIntent;)V
    .locals 3
    .param p0, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 379
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 383
    return-void
.end method

.method public static forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 137
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method public static forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 114
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method public static forDownloadNoPrivileges(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 126
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 142
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method public static forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 101
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 149
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .param p0, "callingToken"    # J
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 156
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method private resolvedDownloadConfirmationCode(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, p1}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v5, 0x1

    .line 314
    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V

    .line 321
    :goto_0
    return-void
.end method

.method private resolvedDownloadDeactivateSim(ZLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 267
    if-eqz p1, :cond_0

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 280
    :goto_0
    return-void
.end method

.method private resolvedDownloadNoPrivileges(ZLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 283
    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move-wide v3, v0

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(JLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    nop

    .line 301
    .end local v0    # "token":J
    goto :goto_0

    .line 299
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 303
    .end local v0    # "token":J
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 305
    :goto_0
    return-void
.end method

.method private resolvedGetDefaultListDeactivateSim(ZLandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 325
    if-eqz p1, :cond_0

    .line 328
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(ZLjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 334
    :goto_0
    return-void
.end method

.method private resolvedGetMetadataDeactivateSim(ZLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 251
    if-eqz p1, :cond_0

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 263
    :goto_0
    return-void
.end method

.method private resolvedSwitchDeactivateSim(ZLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 338
    if-eqz p1, :cond_0

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 350
    :goto_0
    return-void
.end method

.method private resolvedSwitchNoPrivileges(ZLandroid/app/PendingIntent;)V
    .locals 9
    .param p1, "consent"    # Z
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 353
    if-eqz p1, :cond_0

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 363
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move-wide v3, v0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(JIZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    nop

    .line 372
    .end local v0    # "token":J
    goto :goto_0

    .line 370
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 374
    .end local v0    # "token":J
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    .line 376
    :goto_0
    return-void
.end method


# virtual methods
.method public continueOperation(Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "resolutionExtras"    # Landroid/os/Bundle;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 205
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    packed-switch v0, :pswitch_data_0

    .line 244
    const-string v0, "EuiccOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :pswitch_0
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadConfirmationCode(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 227
    goto :goto_0

    .line 239
    :pswitch_1
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 239
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoPrivileges(ZLandroid/app/PendingIntent;)V

    .line 242
    goto :goto_0

    .line 234
    :pswitch_2
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 235
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 234
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchDeactivateSim(ZLandroid/app/PendingIntent;)V

    .line 237
    goto :goto_0

    .line 229
    :pswitch_3
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 229
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetDefaultListDeactivateSim(ZLandroid/app/PendingIntent;)V

    .line 232
    goto :goto_0

    .line 219
    :pswitch_4
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 219
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivileges(ZLandroid/app/PendingIntent;)V

    .line 222
    goto :goto_0

    .line 214
    :pswitch_5
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 214
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadDeactivateSim(ZLandroid/app/PendingIntent;)V

    .line 217
    goto :goto_0

    .line 209
    :pswitch_6
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONSENT"

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 209
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetMetadataDeactivateSim(ZLandroid/app/PendingIntent;)V

    .line 212
    nop

    .line 247
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return-void
.end method
