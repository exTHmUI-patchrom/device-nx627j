.class public abstract Landroid/printservice/PrintService;
.super Landroid/app/Service;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_CAN_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.CAN_SELECT_PRINTER"

.field public static final EXTRA_PRINTER_INFO:Ljava/lang/String; = "android.intent.extra.print.EXTRA_PRINTER_INFO"

.field public static final EXTRA_PRINT_DOCUMENT_INFO:Ljava/lang/String; = "android.printservice.extra.PRINT_DOCUMENT_INFO"

.field public static final EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field public static final EXTRA_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.SELECT_PRINTER"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private mClient:Landroid/printservice/IPrintServiceClient;

.field private mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private mHandler:Landroid/os/Handler;

.field private mLastSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return-void
.end method

.method static synthetic access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .line 161
    iget-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/printservice/PrintService;)I
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .line 161
    iget v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return v0
.end method

.method static synthetic access$102(Landroid/printservice/PrintService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # I

    .line 161
    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p1
.end method

.method static synthetic access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .line 161
    iget-object v0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object v0
.end method

.method static synthetic access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # Landroid/printservice/PrinterDiscoverySession;

    .line 161
    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p1
.end method

.method static synthetic access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .line 161
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object v0
.end method

.method static synthetic access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # Landroid/printservice/IPrintServiceClient;

    .line 161
    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p1
.end method

.method static throwIfNotCalledOnMainThread()V
    .locals 2

    .line 381
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 283
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 284
    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    .line 285
    return-void
.end method

.method public final generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .line 374
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 375
    const-string/jumbo v0, "localId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/print/PrinterId;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public final getActivePrintJobs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 345
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    .line 350
    .local v0, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-interface {v1}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 353
    .local v2, "printJobInfoCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 354
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 355
    new-instance v4, Landroid/printservice/PrintJob;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v4, p0, v5, v6}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v2    # "printJobInfoCount":I
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 359
    return-object v0

    .line 363
    .end local v0    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .end local v1    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_2
    goto :goto_1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrintService"

    const-string v2, "Error calling getPrintJobs()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    new-instance v0, Landroid/printservice/PrintService$1;

    invoke-direct {v0, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    return-object v0
.end method

.method protected onConnected()V
    .locals 0

    .line 292
    return-void
.end method

.method protected abstract onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method protected onDisconnected()V
    .locals 0

    .line 299
    return-void
.end method

.method protected abstract onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method protected abstract onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
