.class public Lcn/nubia/server/policy/edge/GestureSettings;
.super Ljava/lang/Object;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;,
        Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;
    }
.end annotation


# static fields
.field public static final ALL_EDGE_SWITCH:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field private static final EDGE_DATABASE:Ljava/lang/String; = "content://cn.nubia.edge/fit_manager"

.field private static final EDGE_DATABASE_URI:Landroid/net/Uri;

.field public static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field public static final SWITCH_DOUBLE_CLICK:Ljava/lang/String; = "nubia_edge_double_click"

.field public static final SWITCH_DOUBLE_CLICK_BACK:Ljava/lang/String; = "10"

.field public static final SWITCH_DOUBLE_CLICK_FLOAT:Ljava/lang/String; = "01"

.field public static final SWITCH_DOUBLE_CLICK_OFF_VALUE:Ljava/lang/String; = "00"

.field public static final SWITCH_DOUBLE_SLIDE:Ljava/lang/String; = "nubia_edge_double_side_move"

.field public static final SWITCH_INWARD_SLIDE:Ljava/lang/String; = "nubia_edge_move_in_switch"

.field public static final SWITCH_LOOP_SLIDE:Ljava/lang/String; = "nubia_edge_move_loop"

.field public static final SWITCH_QUICK_INWARD:Ljava/lang/String; = "nubia_edge_quick_inward"

.field public static final SWITCH_SINGLE_SLIDE:Ljava/lang/String; = "nubia_edge_single_move_switch"

.field public static final SWITCH_SINGLE_SLIDE_CONTROL_NOTIFICATION:Ljava/lang/String; = "switch_control_notification"

.field public static final SWITCH_SINGLE_SLIDE_OFF_VALUE:Ljava/lang/String; = "off"

.field public static final SWITCH_SINGLE_SLIDE_SWITCH_VALUE:Ljava/lang/String; = "switch_app"

.field private static final TAG:Ljava/lang/String; = "GestureSettings"

.field static sInstance:Lcn/nubia/server/policy/edge/GestureSettings;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private mContactActivity:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mGameModeReceiver:Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;

.field private mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

.field private mLastEdgeTpState:I

.field private mLoadSettingsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

.field private mSettingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    const-string v0, "content://cn.nubia.edge/fit_manager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    .line 58
    const-string/jumbo v0, "nubia_edge_single_move_switch"

    const-string/jumbo v1, "nubia_edge_move_in_switch"

    const-string/jumbo v2, "nubia_edge_double_side_move"

    const-string/jumbo v3, "nubia_edge_move_loop"

    const-string/jumbo v4, "nubia_edge_double_click"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.contacts"

    const-string v2, "cn.nubia.contacts.mainlist.PeopleActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContactActivity:Landroid/content/ComponentName;

    .line 82
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/policy/edge/GestureSettings$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/GestureSettings$1;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance v1, Lcn/nubia/server/policy/edge/GestureSettingsListener;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/GestureSettingsListener;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

    .line 102
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/GestureSettings$1;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGameModeReceiver:Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->loadSettings()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->getAllDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->updateEdgeTpState()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/GestureSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    iget v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/GestureSettings;->getValue(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/GestureSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/GestureSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettings;->updateCZoneState(II)V

    return-void
.end method

.method private getAllDatabase()V
    .locals 8

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "name IN(?,?,?,?,?,?,?,?)"

    sget-object v6, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 213
    if-nez v0, :cond_1

    .line 214
    const-string v1, "GestureSettings"

    const-string v2, "edge cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    .line 215
    :cond_0
    return-void

    .line 217
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 218
    const-string v1, "GestureSettings"

    const-string v2, "edge cursor\'s count is less than zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    .line 219
    :cond_2
    return-void

    .line 221
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    :cond_4
    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 226
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0, v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_5
    const-string v3, "GestureSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    .line 236
    if-eqz v0, :cond_6

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 237
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    .line 241
    :cond_6
    return-void

    .line 236
    :goto_1
    if-eqz v0, :cond_7

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    :cond_7
    throw v1
.end method

.method private getValue(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 308
    if-nez p1, :cond_0

    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 311
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 317
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    const/4 v0, 0x0

    .line 321
    :cond_1
    return-void

    .line 316
    :goto_1
    if-eqz v0, :cond_2

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    const/4 v0, 0x0

    :cond_2
    throw v1
.end method

.method private getValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "name=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 327
    invoke-direct {p0, v0, p1}, Lcn/nubia/server/policy/edge/GestureSettings;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 332
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_0
    return-void

    .line 331
    :goto_1
    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v0, 0x0

    :cond_1
    throw v1
.end method

.method private getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "key"    # Ljava/lang/String;

    .line 339
    if-nez p1, :cond_0

    .line 340
    const-string v0, "GestureSettings"

    const-string v1, "edge cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 343
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 344
    const-string v0, "GestureSettings"

    const-string v1, "edge cursor\'s count is less than zero!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 347
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    const-string/jumbo v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 350
    const-string v1, "GestureSettings"

    const-string v2, "edge database column named value not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 353
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_4
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private isNeedUserEdgeTP()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nubia_edge_move_in_switch"

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nubia_edge_double_side_move"

    .line 398
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nubia_edge_move_loop"

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nubia_edge_double_click"

    .line 399
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nubia_edge_quick_inward"

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 400
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private loadSettings()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 119
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/GestureSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/GestureSettings$2;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    .line 130
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method

.method private setGestureEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 418
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/GestureSettingsListener;->setGestureEnable(Z)V

    .line 419
    return-void
.end method

.method private updateCZoneState(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 406
    invoke-static {}, Lnubia/os/edge/EdgeTouchManager;->getInstance()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnubia/os/edge/EdgeTouchManager;->updateCZoneState(II)V

    .line 407
    return-void
.end method

.method private updateEdgeTpState()V
    .locals 4

    .line 377
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->isNeedUserEdgeTP()Z

    move-result v0

    .line 378
    .local v0, "enable":Z
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/GestureSettings;->setGestureEnable(Z)V

    .line 379
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 380
    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, v1, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->updateCZoneState(II)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-direct {p0, v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->updateCZoneState(II)V

    goto :goto_0

    .line 386
    :cond_1
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 387
    invoke-direct {p0, v1, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->updateTZoneState(II)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-direct {p0, v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->updateTZoneState(II)V

    .line 392
    :goto_0
    return-void
.end method

.method private updateTZoneState(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 410
    invoke-static {}, Lnubia/os/edge/EdgeTouchManager;->getInstance()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnubia/os/edge/EdgeTouchManager;->updateTZoneState(II)V

    .line 411
    return-void
.end method


# virtual methods
.method public addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 414
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/GestureSettingsListener;->addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V

    .line 415
    return-void
.end method

.method public addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 423
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettingsListener;->addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V

    .line 424
    return-void
.end method

.method public getDoubleTapSwitch()Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    const-string/jumbo v1, "nubia_edge_double_click"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    return-object v0

    .line 150
    :cond_0
    const-string v1, "00"

    return-object v1
.end method

.method public getSingleSlideSwitch()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 159
    :cond_1
    const-string v1, "0"

    return-object v1
.end method

.method public isGestureEnable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "nubia_edge_single_move_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 171
    :cond_0
    return v2

    .line 175
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "nubia_edge_double_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    const-string v2, "00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 182
    :cond_2
    return v2

    .line 186
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "nubia_edge_quick_inward"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    const-string/jumbo v3, "nubia_edge_move_in_switch"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    .line 191
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "nubia_edge_move_in_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1

    .line 197
    .end local v0    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "nubia_edge_double_side_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "nubia_edge_move_loop"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 204
    :cond_9
    return v2

    .line 199
    :cond_a
    :goto_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    return v1
.end method

.method public notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGestureSettingsListener:Lcn/nubia/server/policy/edge/GestureSettingsListener;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettingsListener;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public systemBooted()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->loadSettings()V

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->observe()V

    .line 110
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGameModeReceiver:Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mGameModeReceiver:Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;->register()V

    .line 113
    :cond_0
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContactActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->updateTZoneState(II)V

    .end local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_1

    .line 367
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    invoke-direct {p0, v2, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->updateTZoneState(II)V

    .line 374
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    return-void
.end method
