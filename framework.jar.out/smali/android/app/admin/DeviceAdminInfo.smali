.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final USES_POLICY_DEVICE_OWNER:I = -0x2

.field public static final USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_PROFILE_OWNER:I = -0x1

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mSupportsTransferOwnership:Z

.field mUsesPolicies:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 209
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v3, "wipe-data"

    const/4 v2, 0x4

    const v4, 0x1040553

    const v5, 0x1040548

    const v6, 0x1040554

    const v7, 0x1040549

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "reset-password"

    const/4 v3, 0x2

    const v4, 0x1040550

    const v5, 0x1040544

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "limit-password"

    const/4 v3, 0x0

    const v4, 0x104054f

    const v5, 0x1040543

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v6, "watch-login"

    const/4 v5, 0x1

    const v7, 0x1040552

    const v8, 0x1040546

    const v9, 0x1040552

    const v10, 0x1040547

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "force-lock"

    const/4 v4, 0x3

    const v5, 0x104054e

    const v6, 0x1040542

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "set-global-proxy"

    const/4 v4, 0x5

    const v5, 0x1040551

    const v6, 0x1040545

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "expire-password"

    const/4 v4, 0x6

    const v5, 0x104054d

    const v6, 0x1040541

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "encrypted-storage"

    const/4 v4, 0x7

    const v5, 0x104054c

    const v6, 0x1040540

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "disable-camera"

    const/16 v4, 0x8

    const v5, 0x104054a

    const v6, 0x104053e

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "disable-keyguard-features"

    const/16 v4, 0x9

    const v5, 0x104054b

    const v6, 0x104053f

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    nop

    .line 247
    .local v3, "i":I
    :goto_0
    move v0, v3

    .line 247
    .end local v3    # "i":I
    .local v0, "i":I
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 249
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    add-int/lit8 v3, v0, 0x1

    .line 247
    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 531
    .end local v3    # "i":I
    :cond_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    move-object/from16 v2, p2

    iput-object v2, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 302
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    move-object v4, v0

    .line 304
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v5, "android.app.device_admin"

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 305
    if-eqz v4, :cond_10

    .line 310
    iget-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 315
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .line 315
    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v6, 0x2

    if-eq v7, v6, :cond_0

    .line 315
    .end local v7    # "type":I
    goto :goto_0

    .line 319
    .restart local v7    # "type":I
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "nodeName":Ljava/lang/String;
    const-string v9, "device-admin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 325
    sget-object v9, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 328
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 331
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 334
    .local v10, "outerDepth":I
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v7, v11

    if-eq v11, v8, :cond_d

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    .line 335
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_d

    .line 336
    :cond_1
    if-eq v7, v11, :cond_c

    const/4 v12, 0x4

    if-ne v7, v12, :cond_2

    .line 337
    nop

    .line 333
    move-object/from16 v17, v0

    move v0, v8

    goto/16 :goto_8

    .line 339
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "uses-policies"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 341
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 342
    .local v14, "innerDepth":I
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move v7, v15

    if-eq v15, v8, :cond_8

    if-ne v7, v11, :cond_4

    .line 343
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v14, :cond_3

    goto :goto_3

    .line 356
    .end local v14    # "innerDepth":I
    :cond_3
    move-object/from16 v17, v0

    goto :goto_6

    .line 344
    .restart local v14    # "innerDepth":I
    :cond_4
    :goto_3
    if-eq v7, v11, :cond_7

    if-ne v7, v12, :cond_5

    .line 345
    nop

    .line 341
    move-object/from16 v17, v0

    goto :goto_5

    .line 347
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, "policyName":Ljava/lang/String;
    sget-object v12, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 349
    .local v12, "val":Ljava/lang/Integer;
    if-eqz v12, :cond_6

    .line 350
    iget v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    shl-int v16, v8, v16

    or-int v11, v11, v16

    iput v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 355
    move-object/from16 v17, v0

    goto :goto_4

    .line 352
    :cond_6
    const-string v11, "DeviceAdminInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Unknown tag under uses-policies of "

    .line 352
    .end local v0    # "res":Landroid/content/res/Resources;
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v12    # "val":Ljava/lang/Integer;
    .end local v15    # "policyName":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 341
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v17, v0

    .line 341
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_5
    move-object/from16 v0, v17

    const/4 v8, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    goto :goto_2

    .line 356
    .end local v14    # "innerDepth":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v17, v0

    .line 363
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v13    # "tagName":Ljava/lang/String;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :cond_9
    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    .line 356
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v0

    .line 356
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    const-string/jumbo v0, "support-transfer-ownership"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    .line 361
    .end local v13    # "tagName":Ljava/lang/String;
    goto :goto_7

    .line 358
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v8, "support-transfer-ownership tag must be empty."

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_7
    goto :goto_8

    .line 333
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v17, v0

    move v0, v8

    :goto_8
    move v8, v0

    move-object/from16 v0, v17

    goto/16 :goto_1

    .line 368
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "outerDepth":I
    :cond_d
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 370
    :cond_e
    return-void

    .line 321
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_f
    move-object/from16 v17, v0

    .line 321
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with device-admin tag"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v17    # "res":Landroid/content/res/Resources;
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No android.app.device_admin meta-data"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_9
    if-eqz v4, :cond_11

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 286
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    .line 376
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 406
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .param p1, "policyIdent"    # I

    .line 471
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 485
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 486
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 441
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 417
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const-string v0, "flags"

    .line 503
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 504
    return-void
.end method

.method public supportsTransferOwnership()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 3
    .param p1, "policyIdent"    # I

    .line 462
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    const-string v0, "flags"

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 523
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 524
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    return-void
.end method
