.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mIdleConnectionTimeout:J

.field private final mJournalMode:Ljava/lang/String;

.field private final mLookasideSlotCount:I

.field private final mLookasideSlotSize:I

.field private final mOpenFlags:I

.field private final mSyncMode:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openFlags"    # I
    .param p2, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "lookasideSlotSize"    # I
    .param p5, "lookasideSlotCount"    # I
    .param p6, "idleConnectionTimeout"    # J
    .param p8, "journalMode"    # Ljava/lang/String;
    .param p9, "syncMode"    # Ljava/lang/String;

    .line 2330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2331
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    .line 2332
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2333
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2334
    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    .line 2335
    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    .line 2336
    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    .line 2337
    iput-object p8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    .line 2338
    iput-object p9, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    .line 2339
    return-void
.end method

.method synthetic constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "x2"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # J
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Ljava/lang/String;
    .param p10, "x8"    # Landroid/database/sqlite/SQLiteDatabase$1;

    .line 2318
    invoke-direct/range {p0 .. p9}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .line 2380
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .line 2390
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method public getIdleConnectionTimeout()J
    .locals 2

    .line 2401
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public getJournalMode()Ljava/lang/String;
    .locals 1

    .line 2412
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object v0
.end method

.method public getLookasideSlotCount()I
    .locals 1

    .line 2359
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method public getLookasideSlotSize()I
    .locals 1

    .line 2348
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method public getOpenFlags()I
    .locals 1

    .line 2369
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method public getSynchronousMode()Ljava/lang/String;
    .locals 1

    .line 2422
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1

    .line 2432
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
