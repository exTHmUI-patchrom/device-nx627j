.class public Landroid/telephony/mbms/vendor/VendorUtils;
.super Ljava/lang/Object;
.source "VendorUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACTION_CLEANUP:Ljava/lang/String; = "android.telephony.mbms.action.CLEANUP"

.field public static final ACTION_DOWNLOAD_RESULT_INTERNAL:Ljava/lang/String; = "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

.field public static final ACTION_FILE_DESCRIPTOR_REQUEST:Ljava/lang/String; = "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

.field public static final EXTRA_FD_COUNT:Ljava/lang/String; = "android.telephony.mbms.extra.FD_COUNT"

.field public static final EXTRA_FINAL_URI:Ljava/lang/String; = "android.telephony.mbms.extra.FINAL_URI"

.field public static final EXTRA_FREE_URI_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.FREE_URI_LIST"

.field public static final EXTRA_PAUSED_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.PAUSED_LIST"

.field public static final EXTRA_PAUSED_URI_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.PAUSED_URI_LIST"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android.telephony.mbms.extra.SERVICE_ID"

.field public static final EXTRA_TEMP_FILES_IN_USE:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

.field public static final EXTRA_TEMP_FILE_ROOT:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_FILE_ROOT"

.field public static final EXTRA_TEMP_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_LIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppReceiverFromPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroid/telephony/mbms/MbmsDownloadReceiver;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "candidate":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    nop

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 155
    return-object v0

    .line 157
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
