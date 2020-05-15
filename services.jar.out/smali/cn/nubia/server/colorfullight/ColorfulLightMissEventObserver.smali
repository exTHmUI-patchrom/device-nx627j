.class public final Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
.super Ljava/lang/Object;
.source "ColorfulLightMissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NOTIFICATION_SWITCH_FLAG:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ColorfulLightMissEvent"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mService:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "ColorfulLightMissEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/app/INotificationManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p3, "notificationManager"    # Landroid/app/INotificationManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 42
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 44
    iput-object p3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationManager:Landroid/app/INotificationManager;

    .line 46
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 46
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorfulLightMissEvent"

    const-string v2, "[ColorfulLight] Can not register notification listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 194
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "pkgName":Ljava/lang/String;
    return-object v0
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 153
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ColorfulLightMissEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] handleNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isNotificationPermanent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    .line 161
    .local v1, "id":I
    new-instance v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    invoke-direct {v2, p0, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Ljava/lang/String;I)V

    .line 162
    .local v2, "mNotificationInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->checkMissEventState()V

    .line 167
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "mNotificationInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    :cond_1
    return-void
.end method

.method private handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 170
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "ColorfulLightMissEvent"

    const-string v1, "[ColorfulLight] handleNotificationRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    .line 177
    .local v1, "id":I
    new-instance v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    invoke-direct {v2, p0, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Ljava/lang/String;I)V

    .line 178
    .local v2, "mNotificationInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->checkMissEventState()V

    .line 183
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "mNotificationInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    :cond_1
    return-void
.end method

.method private isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 190
    :cond_1
    return v0
.end method


# virtual methods
.method checkMissEventState()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isNotifySwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ColorfulLightMissEvent"

    const-string v1, "[ColorfulLight] checkMissEventState: mNotificationList is enable!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 135
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "ColorfulLightMissEvent"

    const-string v2, "[ColorfulLight] checkMissEventState: cancel colorful light notification!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v2, 0x6d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 141
    :cond_3
    :goto_0
    return-void
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNotificationList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 146
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    .line 147
    .local v1, "notificationInfo":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->access$200(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->access$300(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .end local v1    # "notificationInfo":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    return-void
.end method

.method handleKeyguardOn()V
    .locals 2

    .line 56
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "ColorfulLightMissEvent"

    const-string v1, "[ColorfulLight] handleKeyguardOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void
.end method
