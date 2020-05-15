.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$SetOnClickPendingIntentList;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$OverrideTextColorsAction;,
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$MethodKey;
    }
.end annotation


# static fields
.field private static final ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MAX_NESTED_VIEWS:I = 0xa

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final OVERRIDE_TEXT_COLORS_TAG:I = 0x14

.field private static final REFLECTION_ACTION_TAG:I = 0x2

.field private static final SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final SET_ON_CLICK_FILL_IN_INTENT_TAG:I = 0x9

.field private static final SET_ON_CLICK_PENDING_INTENT_TAG:I = 0x1

.field private static final SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final SET_REMOTE_VIEW_ADAPTER_LIST_TAG:I = 0xf

.field private static final TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field private static final VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mApplication:Landroid/content/pm/ApplicationInfo;

.field private mApplyThemeResId:I

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private final mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mPluginResDir:Ljava/lang/String;

.field private mPortrait:Landroid/widget/RemoteViews;

.field private mReapplyDisallowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 231
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 236
    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    .line 483
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    .line 3759
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 215
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 3883
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    .line 2247
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2248
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2249
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2250
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 2251
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2324
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    .line 2325
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2328
    .local p5, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 215
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 224
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 3883
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    .line 2329
    const/16 v1, 0xa

    if-le p4, v1, :cond_1

    .line 2330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 2331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2333
    :cond_1
    :goto_0
    add-int/2addr p4, v0

    .line 2335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2338
    .local v1, "mode":I
    if-nez p2, :cond_2

    .line 2339
    new-instance v3, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2341
    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_1

    .line 2343
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2344
    iput-object p5, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 2345
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 2348
    :goto_1
    if-nez v1, :cond_5

    .line 2349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_3

    .line 2350
    move-object v3, p3

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    :goto_2
    iput-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2354
    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    .line 2356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    goto :goto_4

    .line 2360
    :cond_5
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v8, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v3, v9

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    iput-object v9, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2361
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v6, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    iput-object v9, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 2363
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2364
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2366
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    .line 2367
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p3, "x2"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Landroid/widget/RemoteViews$1;

    .line 125
    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "src"    # Landroid/widget/RemoteViews;

    .line 2288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 215
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 3883
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    .line 2289
    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2290
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2291
    iget-boolean v0, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 2292
    iget v0, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2293
    iget-boolean v0, p1, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2294
    iget-boolean v0, p1, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    .line 2295
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 2297
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2299
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 2302
    :cond_0
    iget-object v0, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2304
    .local v0, "p":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    .line 2305
    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;)V

    .line 2306
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2309
    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2315
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2316
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .line 2264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 215
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 3883
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    .line 2265
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2268
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2271
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2272
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2274
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2275
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 2277
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2278
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 2279
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 2281
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 2283
    return-void

    .line 2269
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .line 2220
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2221
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "layoutId"    # I

    .line 2234
    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2235
    return-void
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p4, "x4"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews$BitmapCache;

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .line 125
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$2100(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 125
    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .line 125
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    .line 125
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .line 125
    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;
    .param p4, "x4"    # Z

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .line 125
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/RemoteViews$Action;
    .locals 1

    .line 125
    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static synthetic access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/Icon;
    .param p1, "x1"    # Ljava/util/function/Consumer;

    .line 125
    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .line 2503
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2508
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 2511
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    return-void

    .line 2504
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .line 1592
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1593
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 1594
    return-void
.end method

.method private getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 2380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2381
    .local v0, "tag":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2424
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2422
    :pswitch_0
    new-instance v1, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2420
    :pswitch_1
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 2418
    :pswitch_2
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2416
    :pswitch_3
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2412
    :pswitch_4
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2410
    :pswitch_5
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2414
    :pswitch_6
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2408
    :pswitch_7
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2406
    :pswitch_8
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2404
    :pswitch_9
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2402
    :pswitch_a
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2396
    :pswitch_b
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2400
    :pswitch_c
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2398
    :pswitch_d
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2393
    :pswitch_e
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V

    return-object v1

    .line 2389
    :pswitch_f
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2391
    :pswitch_10
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2383
    :pswitch_11
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 2386
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3722
    if-nez p0, :cond_0

    .line 3723
    const/4 v0, 0x0

    return-object v0

    .line 3727
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3728
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_3

    .line 3732
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3733
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3734
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3736
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3738
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 3741
    .end local v2    # "context":Landroid/content/Context;
    nop

    .line 3744
    :cond_2
    return-object v1

    .line 3739
    :catch_0
    move-exception v2

    .line 3740
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3729
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p4, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3445
    new-instance v9, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$1;)V

    return-object v9
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 3633
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 3634
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3635
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3636
    return-object p1

    .line 3639
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3641
    :catch_0
    move-exception v0

    .line 3642
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object p1
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1022
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1024
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1026
    :try_start_0
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1027
    sget-object v2, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    sget-object v3, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    .local v2, "result":Landroid/widget/RemoteViews$MethodArgs;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1032
    if-nez p3, :cond_0

    .line 1033
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1033
    .local v5, "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1047
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1035
    :cond_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p3, v5, v4

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1037
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    .line 1044
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    .line 1045
    const-class v6, Landroid/view/RemotableViewMethod;

    .line 1046
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/view/RemotableViewMethod;

    invoke-interface {v6}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    nop

    .line 1049
    nop

    .line 1052
    :try_start_2
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    .line 1053
    .local v6, "key":Landroid/widget/RemoteViews$MethodKey;
    invoke-virtual {v6, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1054
    sget-object v7, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "key":Landroid/widget/RemoteViews$MethodKey;
    goto :goto_2

    .line 1038
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_3
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " can\'t use method with RemoteViews: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1047
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    nop

    .line 1048
    .local v3, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t have method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1057
    .end local v3    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :goto_2
    if-nez p4, :cond_3

    .line 1058
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 1061
    :cond_3
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1062
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1065
    :cond_4
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_5

    .line 1066
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1067
    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1069
    .local v3, "asyncType":Ljava/lang/invoke/MethodType;
    :try_start_5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1076
    goto :goto_3

    .line 1071
    :catch_1
    move-exception v4

    .line 1072
    .local v4, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_6
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async implementation declared as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but not defined for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": public Runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 1075
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1078
    .end local v3    # "asyncType":Ljava/lang/invoke/MethodType;
    .end local v4    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_5
    :goto_3
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 1079
    .end local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1083
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    const-string v0, "()"

    return-object v0

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3309
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3311
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3312
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    .line 3314
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    .line 3317
    .end local v0    # "orientation":I
    :cond_1
    return-object p0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .line 1006
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 1008
    .local v0, "appScale":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1009
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1011
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1012
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1013
    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1014
    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1015
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1016
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .line 2254
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 3360
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 3361
    .local v0, "contextForResources":Landroid/content/Context;
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    invoke-direct {v1, p1, v0}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 3363
    .local v1, "inflationContext":Landroid/content/Context;
    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->access$1900(Landroid/widget/RemoteViews$RemoteViewsContextWrapper;Ljava/lang/String;)V

    .line 3367
    iget v2, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    if-eqz v2, :cond_0

    .line 3368
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 3370
    :cond_0
    const-string v2, "layout_inflater"

    .line 3371
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 3375
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3376
    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 3377
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3378
    .local v3, "v":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 3379
    return-object v3
.end method

.method private static loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3384
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3386
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3388
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3390
    .local v1, "windowAnimations":I
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3392
    .local v3, "windowAnimationStyle":Landroid/content/res/TypedArray;
    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews$OnClickHandler;->setEnterAnimationId(I)V

    .line 3395
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3396
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3398
    .end local v0    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v1    # "windowAnimations":I
    .end local v3    # "windowAnimationStyle":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3604
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3605
    if-nez p3, :cond_0

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    move-object p3, v0

    .line 3606
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3607
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3608
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 3609
    .local v2, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3607
    .end local v2    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3612
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private readActionsFromParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 2370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2371
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 2373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2374
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2377
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .line 2475
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2476
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2477
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2478
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2479
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2480
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2482
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 2484
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2485
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2487
    :cond_2
    :goto_1
    return-void
.end method

.method private startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .locals 3
    .param p1, "task"    # Landroid/widget/RemoteViews$AsyncApplyTask;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3430
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 3431
    .local v0, "cancelSignal":Landroid/os/CancellationSignal;
    invoke-virtual {v0, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 3433
    if-nez p2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews$AsyncApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3434
    return-object v0
.end method

.method private static visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 554
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 556
    :cond_0
    return-void
.end method

.method private writeActionsToParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 3707
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3708
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    goto :goto_0

    .line 3710
    .end local v0    # "count":I
    :cond_0
    move v0, v1

    .line 3712
    .restart local v0    # "count":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    move v2, v1

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3714
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 3715
    .local v3, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3716
    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$Action;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3717
    const/4 v4, 0x2

    goto :goto_2

    .line 3716
    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual {v3, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3713
    .end local v3    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3719
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .line 2525
    if-nez p2, :cond_0

    .line 2526
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 2527
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    .line 2525
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2528
    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;
    .param p3, "index"    # I

    .line 2541
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2542
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 3340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3345
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3347
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3348
    .local v1, "result":Landroid/view/View;
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->loadTransitionOverride(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3350
    invoke-direct {v0, v1, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3352
    return-object v1
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 3426
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3440
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/widget/RemoteViews;->getAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;->startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2439
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2442
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 3668
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    .line 2494
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 2457
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 2446
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 3655
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 3753
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReapplyDisallowed()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    return v0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .line 497
    if-nez p1, :cond_0

    return-void

    .line 501
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 503
    .local v0, "copy":Landroid/widget/RemoteViews;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 508
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 509
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 510
    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    .line 511
    .local v5, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v5}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .end local v5    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    .end local v4    # "i":I
    :cond_2
    iget-object v4, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 515
    .local v4, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-nez v4, :cond_3

    return-void

    .line 516
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 517
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 518
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    .line 519
    .restart local v5    # "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v6}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v7

    .line 521
    .local v7, "mergeBehavior":I
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_4

    .line 522
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_4
    if-eqz v7, :cond_5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 528
    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v5    # "a":Landroid/widget/RemoteViews$Action;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "mergeBehavior":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 533
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v3}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 534
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 535
    return-void
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 3664
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public overrideTextColors(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 269
    new-instance v0, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 270
    return-void
.end method

.method public prefersAsyncApply()Z
    .locals 4

    .line 3621
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3622
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3623
    .local v0, "count":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3624
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3625
    const/4 v1, 0x1

    return v1

    .line 3623
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3629
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 3546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3547
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3551
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3556
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3557
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3558
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3563
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3564
    return-void
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 3581
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3587
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 3592
    .local v9, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3593
    const v0, 0x1020018

    move-object v10, p2

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3594
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3599
    :cond_1
    move-object v10, p2

    :goto_0
    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$1;)V

    move-object v0, p0

    move-object v1, p3

    invoke-direct {v0, v11, v1}, Landroid/widget/RemoteViews;->startTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v2

    return-object v2
.end method

.method public reduceImageSizes(II)V
    .locals 4
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 254
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 255
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 257
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeAllViews(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 2551
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2552
    return-void
.end method

.method public removeAllViewsExceptId(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "viewIdToKeep"    # I

    .line 2564
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2565
    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 3295
    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3296
    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 3285
    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3286
    return-void
.end method

.method public setApplyTheme(I)V
    .locals 0
    .param p1, "themeResId"    # I

    .line 3325
    iput p1, p0, Landroid/widget/RemoteViews;->mApplyThemeResId:I

    .line 3326
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .line 3232
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3233
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 3086
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3087
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .line 3243
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3244
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 3097
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3098
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 3178
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v4, 0x8

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3179
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .line 3200
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3201
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .line 2757
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2758
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 2759
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2760
    return-void
.end method

.method public setChronometerCountDown(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "isCountDown"    # Z

    .line 2771
    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2772
    return-void
.end method

.method public setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/res/ColorStateList;

    .line 3132
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3134
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .line 3275
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 3276
    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .line 2592
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2593
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 3167
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v4, 0x7

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3168
    return-void
.end method

.method public setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "colorFilter"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 2876
    new-instance v6, Landroid/widget/RemoteViews$SetDrawableTint;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2877
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .line 2737
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2738
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 3156
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v4, 0x6

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3157
    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    .line 3265
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3266
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 2717
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2718
    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 2727
    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 2728
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .line 2697
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2698
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2707
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 2708
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 3119
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3120
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .line 3254
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3255
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .param p1, "isWidgetCollectionChild"    # Z

    .line 2468
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2469
    return-void
.end method

.method public setLabelFor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .line 3305
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3306
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 3145
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x5

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3146
    return-void
.end method

.method setNotRoot()V
    .locals 1

    .line 1597
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 1598
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 2851
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2852
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2814
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2815
    return-void
.end method

.method public setOnClickPendingIntentList(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 3994
    .local p2, "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3995
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 2830
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2831
    return-void
.end method

.method public setPluginResDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 3887
    iput-object p1, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    .line 3888
    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 2899
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2901
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .line 2789
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2790
    if-nez p4, :cond_0

    .line 2791
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2792
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2794
    :cond_0
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 2911
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2913
    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 2887
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2889
    return-void
.end method

.method public setReapplyDisallowed()V
    .locals 1

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    .line 280
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .line 3008
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3009
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2951
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 2952
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2963
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2964
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .line 2988
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2989
    return-void
.end method

.method public setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 242
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .line 2998
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2999
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 3108
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3109
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3189
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3190
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 2923
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2924
    return-void
.end method

.method public setTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .line 2934
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setTextColor"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2936
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 2637
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2638
    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 2669
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2670
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .line 2652
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2653
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 2687
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2688
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 2612
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2613
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .line 2623
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2624
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .line 3211
    if-eqz p3, :cond_0

    .line 3213
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 3214
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 3218
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v5, 0xb

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3219
    return-void
.end method

.method public setViewLayoutMarginBottomDimen(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "bottomMarginDimen"    # I

    .line 3059
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3061
    return-void
.end method

.method public setViewLayoutMarginEnd(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "endMargin"    # I

    .line 3048
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3050
    return-void
.end method

.method public setViewLayoutMarginEndDimen(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "endMarginDimen"    # I

    .line 3034
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3036
    return-void
.end method

.method public setViewLayoutWidth(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "layoutWidth"    # I

    .line 3071
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3073
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only supports 0, WRAP_CONTENT and MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3075
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3076
    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 3021
    new-instance v7, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3022
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 2602
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2603
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 2573
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2574
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 2582
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2583
    return-void
.end method

.method public visitUris(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3672
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3673
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_0

    .line 3677
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3679
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v2, :cond_1

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    .line 3680
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3682
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3683
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3685
    :goto_0
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3686
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3687
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;)V

    .line 3689
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPluginResDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 3692
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3695
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_3

    .line 3696
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3698
    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3700
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    or-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3702
    :goto_1
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mReapplyDisallowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3703
    return-void
.end method
