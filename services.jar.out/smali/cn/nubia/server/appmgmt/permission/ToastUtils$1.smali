.class Lcn/nubia/server/appmgmt/permission/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/permission/ToastUtils;->showTosat(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$op:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$op:I

    iput-object p3, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/permission/ToastUtils;->access$000(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "opToLables":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v1, v0

    iget v2, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$op:I

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget v1, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$op:I

    aget-object v1, v0, v1

    .line 62
    .local v1, "opToLabel":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 63
    return-void

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 67
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    .line 71
    :goto_0
    if-nez v2, :cond_2

    .line 72
    return-void

    .line 74
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "packageLabel":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 76
    return-void

    .line 78
    :cond_3
    sget-object v5, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sPackageRecords:Landroid/util/LruCache;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v5, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;->val$context:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/ToastUtils;->access$100()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x30c0085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 82
    return-void

    .line 59
    .end local v1    # "opToLabel":Ljava/lang/String;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageLabel":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method
