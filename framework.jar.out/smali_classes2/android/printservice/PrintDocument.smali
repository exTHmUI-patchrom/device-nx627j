.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final mInfo:Landroid/print/PrintDocumentInfo;

.field private final mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "printServiceClient"    # Landroid/printservice/IPrintServiceClient;
    .param p3, "info"    # Landroid/print/PrintDocumentInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    .line 50
    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 51
    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 75
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 80
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object v0, v4

    .line 81
    const/4 v4, 0x1

    aget-object v4, v3, v4

    move-object v2, v4

    .line 82
    iget-object v4, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v4, v2, v5}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    nop

    .line 89
    if-eqz v2, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 89
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 86
    :catch_1
    move-exception v3

    .line 87
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "PrintDocument"

    const-string v5, "Error calling getting print job data!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v3    # "re":Landroid/os/RemoteException;
    if-eqz v2, :cond_1

    .line 91
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :goto_1
    goto :goto_2

    .line 92
    :catch_2
    move-exception v3

    goto :goto_1

    .line 84
    :catch_3
    move-exception v3

    .line 85
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_4
    const-string v4, "PrintDocument"

    const-string v5, "Error calling getting print job data!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .end local v3    # "ioe":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 91
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 97
    :cond_1
    :goto_2
    return-object v1

    .line 89
    :goto_3
    if-eqz v2, :cond_2

    .line 91
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 94
    goto :goto_4

    .line 92
    :catch_4
    move-exception v3

    .line 94
    :cond_2
    :goto_4
    throw v1
.end method

.method public getInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    .line 60
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 61
    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
