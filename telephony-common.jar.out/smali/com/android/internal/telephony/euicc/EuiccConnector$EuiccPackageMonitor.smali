.class Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EuiccPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method

.method private sendPackageChange(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceUnbindForThisPackage"    # Z

    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 1090
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 1080
    if-eqz p4, :cond_0

    .line 1081
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 1082
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    .line 1081
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    .line 1061
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1075
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    .line 1076
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1065
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    .line 1066
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1070
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    .line 1071
    return-void
.end method
