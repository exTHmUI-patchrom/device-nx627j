.class public final Landroid/print/PrintAttributes$Margins;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margins"
.end annotation


# static fields
.field public static final NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final mBottomMils:I

.field private final mLeftMils:I

.field private final mRightMils:I

.field private final mTopMils:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1222
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "leftMils"    # I
    .param p2, "topMils"    # I
    .param p3, "rightMils"    # I
    .param p4, "bottomMils"    # I

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    .line 1239
    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    .line 1240
    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    .line 1241
    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    .line 1242
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 1288
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    .line 1289
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1291
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1292
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 1288
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1308
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1309
    return v0

    .line 1311
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1312
    return v1

    .line 1314
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1315
    return v1

    .line 1317
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrintAttributes$Margins;

    .line 1318
    .local v2, "other":Landroid/print/PrintAttributes$Margins;
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    if-eq v3, v4, :cond_3

    .line 1319
    return v1

    .line 1321
    :cond_3
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    if-eq v3, v4, :cond_4

    .line 1322
    return v1

    .line 1324
    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    if-eq v3, v4, :cond_5

    .line 1325
    return v1

    .line 1327
    :cond_5
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    if-eq v3, v4, :cond_6

    .line 1328
    return v1

    .line 1330
    :cond_6
    return v0
.end method

.method public getBottomMils()I
    .locals 1

    .line 1277
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return v0
.end method

.method public getLeftMils()I
    .locals 1

    .line 1250
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    return v0
.end method

.method public getRightMils()I
    .locals 1

    .line 1268
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    return v0
.end method

.method public getTopMils()I
    .locals 1

    .line 1259
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1297
    const/16 v0, 0x1f

    .line 1298
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1299
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    add-int/2addr v3, v4

    .line 1300
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    add-int/2addr v1, v4

    .line 1301
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    add-int/2addr v3, v4

    .line 1302
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int/2addr v2, v3

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    add-int/2addr v2, v1

    .line 1303
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1336
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Margins{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string v1, "leftMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1338
    const-string v1, ", topMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    const-string v1, ", rightMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1340
    const-string v1, ", bottomMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1341
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1281
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    return-void
.end method
