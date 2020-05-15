.class Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
.super Ljava/lang/Object;
.source "ColorfulLightMissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationInfos"
.end annotation


# instance fields
.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Ljava/lang/String;I)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 202
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mId:I

    .line 205
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    .line 198
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    .line 198
    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mId:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 210
    return v0

    .line 212
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    move-object v2, p1

    check-cast v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;

    .line 216
    .local v2, "otherInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    iget v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mId:I

    iget v4, v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;->mPackageName:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    .line 216
    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 213
    .end local v2    # "otherInfos":Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$NotificationInfos;
    :cond_4
    :goto_1
    return v1
.end method
