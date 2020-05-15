.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static sServiceInitialized:Z

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    .line 161
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 162
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 163
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 166
    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method private static bindService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_0

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    monitor-exit v0

    return-void

    .line 180
    :cond_1
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 181
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 182
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/IBinder;
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static deleteAllHosts()V
    .locals 3

    .line 360
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 3

    .line 248
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, -0x1

    return v0

    .line 252
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected clearViews()V
    .locals 2

    .line 456
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 377
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 381
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 382
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 383
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .local v1, "views":Landroid/widget/RemoteViews;
    nop

    .line 390
    nop

    .line 392
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 394
    return-object v0

    .line 389
    .end local v1    # "views":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 385
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .line 317
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    nop

    .line 328
    :try_start_2
    monitor-exit v0

    .line 329
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteHost()V
    .locals 3

    .line 340
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds()[I
    .locals 3

    .line 303
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 307
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 403
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 415
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 416
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 418
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 422
    :cond_0
    return-void

    .line 418
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onProvidersChanged()V
    .locals 0

    .line 430
    return-void
.end method

.method public final startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    .line 280
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    .line 286
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_1

    .line 287
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 296
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 297
    return-void

    .line 290
    .restart local v0    # "intentSender":Landroid/content/IntentSender;
    :cond_1
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startListening()V
    .locals 7

    .line 190
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 196
    .local v1, "N":I
    new-array v2, v1, [I

    .line 197
    .local v2, "idsToUpdate":[I
    const/4 v3, 0x0

    move v4, v3

    .line 197
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 198
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "N":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 203
    .end local v2    # "idsToUpdate":[I
    .local v0, "idsToUpdate":[I
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v5, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .local v1, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    nop

    .line 207
    nop

    .line 210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 211
    .local v2, "N":I
    nop

    .line 211
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 212
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    .line 213
    .local v4, "update":Landroid/appwidget/PendingHostUpdate;
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v5, :pswitch_data_0

    .line 213
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_2

    .line 221
    .restart local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :pswitch_0
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    .line 221
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_2

    .line 218
    .restart local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :pswitch_1
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 219
    goto :goto_2

    .line 215
    :pswitch_2
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 216
    nop

    .line 211
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 206
    .end local v1    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v2    # "N":I
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 200
    .end local v0    # "idsToUpdate":[I
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopListening()V
    .locals 3

    .line 231
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 240
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 434
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 436
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 440
    :cond_0
    return-void

    .line 436
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method viewDataChanged(II)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 444
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 446
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    .line 450
    :cond_0
    return-void

    .line 446
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
