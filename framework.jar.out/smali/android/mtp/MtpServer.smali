.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mNativeContext:J

.field private final mOnTerminate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "controlFd"    # Ljava/io/FileDescriptor;
    .param p3, "usePtp"    # Z
    .param p4, "onTerminate"    # Ljava/lang/Runnable;
    .param p5, "deviceInfoManufacturer"    # Ljava/lang/String;
    .param p6, "deviceInfoModel"    # Ljava/lang/String;
    .param p7, "deviceInfoDeviceVersion"    # Ljava/lang/String;
    .param p8, "deviceInfoSerialNumber"    # Ljava/lang/String;

    move-object v8, p0

    .line 45
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase;

    iput-object v0, v8, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 47
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, v8, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    .line 48
    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    move-object v0, p1

    invoke-virtual {v0, v8}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 57
    return-void
.end method

.method public static configure(Z)V
    .locals 0
    .param p0, "usePtp"    # Z

    .line 93
    invoke-static {p0}, Landroid/mtp/MtpServer;->native_configure(Z)V

    .line 94
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method public static final native native_configure(Z)V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 85
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 86
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 89
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 90
    return-void
.end method

.method public run()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 67
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 68
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    .line 69
    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0
    .param p1, "property"    # I

    .line 81
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 82
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 73
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 74
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 77
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 78
    return-void
.end method

.method public start()V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method
