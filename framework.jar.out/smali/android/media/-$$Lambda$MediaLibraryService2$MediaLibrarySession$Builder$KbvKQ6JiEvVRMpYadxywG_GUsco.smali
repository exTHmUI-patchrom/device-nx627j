.class public final synthetic Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/update/ProviderCreator;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaLibraryService2;

.field private final synthetic f$1:Ljava/util/concurrent/Executor;

.field private final synthetic f$2:Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$0:Landroid/media/MediaLibraryService2;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$2:Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    return-void
.end method


# virtual methods
.method public final createProvider(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$0:Landroid/media/MediaLibraryService2;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;->f$2:Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    check-cast p1, Landroid/media/MediaSession2$BuilderBase;

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->lambda$new$0(Landroid/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;Landroid/media/MediaSession2$BuilderBase;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    move-result-object p1

    return-object p1
.end method
