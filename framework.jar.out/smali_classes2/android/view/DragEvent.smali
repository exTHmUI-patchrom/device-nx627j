.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_DRAG_ENDED:I = 0x4

.field public static final ACTION_DRAG_ENTERED:I = 0x5

.field public static final ACTION_DRAG_EXITED:I = 0x6

.field public static final ACTION_DRAG_LOCATION:I = 0x2

.field public static final ACTION_DRAG_STARTED:I = 0x1

.field public static final ACTION_DROP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final TRACK_RECYCLED_LOCATION:Z = false

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/DragEvent;

.field private static gRecyclerUsed:I


# instance fields
.field mAction:I

.field mClipData:Landroid/content/ClipData;

.field mClipDescription:Landroid/content/ClipDescription;

.field mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field mDragResult:Z

.field mEventHandlerWasCalled:Z

.field mLocalState:Ljava/lang/Object;

.field private mNext:Landroid/view/DragEvent;

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 147
    const/4 v0, 0x0

    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 527
    new-instance v0, Landroid/view/DragEvent$1;

    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method private init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p7, "localState"    # Ljava/lang/Object;
    .param p8, "result"    # Z

    .line 276
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    .line 277
    iput p2, p0, Landroid/view/DragEvent;->mX:F

    .line 278
    iput p3, p0, Landroid/view/DragEvent;->mY:F

    .line 279
    iput-object p4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 280
    iput-object p5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 281
    iput-object p6, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 282
    iput-object p7, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 283
    iput-boolean p8, p0, Landroid/view/DragEvent;->mDragResult:Z

    .line 284
    return-void
.end method

.method static obtain()Landroid/view/DragEvent;
    .locals 8

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 11
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p7, "result"    # Z

    .line 295
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/view/DragEvent;

    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    .line 298
    .local v0, "ev":Landroid/view/DragEvent;
    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, p3

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    .line 300
    monitor-exit v1

    return-object v0

    .line 302
    .end local v0    # "ev":Landroid/view/DragEvent;
    :cond_0
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 303
    .restart local v0    # "ev":Landroid/view/DragEvent;
    iget-object v2, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object v2, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 304
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 307
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/DragEvent;->mRecycled:Z

    .line 308
    iput-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    .line 310
    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, p3

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    .line 312
    return-object v0

    .line 305
    .end local v0    # "ev":Landroid/view/DragEvent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 8
    .param p0, "source"    # Landroid/view/DragEvent;

    .line 317
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    iget v2, p0, Landroid/view/DragEvent;->mY:F

    iget-object v3, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v6, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iget-boolean v7, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 336
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    return-object v0
.end method

.method public getLocalState()Ljava/lang/Object;
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    return v0
.end method

.method public getX()F
    .locals 1

    .line 345
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 354
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    return v0
.end method

.method public final recycle()V
    .locals 4

    .line 450
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    if-nez v0, :cond_1

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    .line 456
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 457
    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 458
    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 461
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 463
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/2addr v2, v0

    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 464
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    .line 465
    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 467
    :cond_0
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 500
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 502
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 503
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 510
    :goto_0
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    if-nez v0, :cond_1

    .line 511
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 513
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 516
    :goto_1
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    if-nez v0, :cond_2

    .line 517
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 519
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 522
    :goto_2
    return-void
.end method
