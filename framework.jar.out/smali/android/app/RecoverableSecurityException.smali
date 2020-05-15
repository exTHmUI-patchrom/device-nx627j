.class public final Landroid/app/RecoverableSecurityException;
.super Ljava/lang/SecurityException;
.source "RecoverableSecurityException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RecoverableSecurityException$LocalDialog;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RecoverableSecurityException;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecoverableSecurityException"


# instance fields
.field private final mUserAction:Landroid/app/RemoteAction;

.field private final mUserMessage:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Landroid/app/RecoverableSecurityException$1;

    invoke-direct {v0}, Landroid/app/RecoverableSecurityException$1;-><init>()V

    sput-object v0, Landroid/app/RecoverableSecurityException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    .line 59
    invoke-direct {p0, v0, v1, v2}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "userMessage"    # Ljava/lang/CharSequence;
    .param p3, "userAction"    # Landroid/app/RemoteAction;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    .line 85
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "userMessage"    # Ljava/lang/CharSequence;
    .param p3, "userActionTitle"    # Ljava/lang/CharSequence;
    .param p4, "userAction"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance v0, Landroid/app/RemoteAction;

    const-string v1, "android"

    .line 94
    const v2, 0x10804ca

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {v0, v1, p3, p3, p4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 92
    invoke-direct {p0, p1, p2, v0}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;
    .locals 1
    .param p0, "x0"    # Landroid/app/RecoverableSecurityException;

    .line 51
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/RecoverableSecurityException;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/RecoverableSecurityException;

    .line 51
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getUserAction()Landroid/app/RemoteAction;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method public getUserMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public showAsDialog(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 172
    new-instance v0, Landroid/app/RecoverableSecurityException$LocalDialog;

    invoke-direct {v0}, Landroid/app/RecoverableSecurityException$LocalDialog;-><init>()V

    .line 173
    .local v0, "dialog":Landroid/app/RecoverableSecurityException$LocalDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "RecoverableSecurityException"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/RecoverableSecurityException$LocalDialog;->setArguments(Landroid/os/Bundle;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecoverableSecurityException_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 179
    .local v3, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 180
    .local v4, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 181
    .local v5, "old":Landroid/app/Fragment;
    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 184
    :cond_0
    invoke-virtual {v4, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 185
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 186
    return-void
.end method

.method public showAsNotification(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecoverableSecurityException_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "channelId":Ljava/lang/String;
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "RecoverableSecurityException"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 125
    invoke-virtual {p0, p1, v1}, Landroid/app/RecoverableSecurityException;->showAsNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public showAsNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 147
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 148
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    const v2, 0x10804c6

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    .line 150
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    .line 151
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    .line 152
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "err"

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 154
    .local v1, "builder":Landroid/app/Notification$Builder;
    const-string v2, "RecoverableSecurityException"

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 219
    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, p1, p2}, Landroid/app/RemoteAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    return-void
.end method
