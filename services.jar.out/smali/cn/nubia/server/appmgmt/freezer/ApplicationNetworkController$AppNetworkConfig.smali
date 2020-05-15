.class Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppNetworkConfig"
.end annotation


# instance fields
.field public enable2GInScreenOff:Z

.field public enableMobile:Z

.field public enableMobileInScreenOff:Z

.field public enableWifi:Z

.field public enableWifiInScreenOff:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 162
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 163
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enable2GInScreenOff:Z

    .line 166
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 167
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 168
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 1
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "mobileInScreenOff"    # Z
    .param p4, "wifiInScreenOff"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 162
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 163
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enable2GInScreenOff:Z

    .line 172
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 173
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 174
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 175
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 176
    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 1
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "mobileInScreenOff"    # Z
    .param p4, "wifiInScreenOff"    # Z
    .param p5, "b2GInScreenOff"    # Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 162
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 163
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enable2GInScreenOff:Z

    .line 181
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 182
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 183
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 184
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 185
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;->enable2GInScreenOff:Z

    .line 186
    return-void
.end method
