.class public final enum Landroid/graphics/ColorSpace$Model;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Model;

.field public static final enum CMYK:Landroid/graphics/ColorSpace$Model;

.field public static final enum LAB:Landroid/graphics/ColorSpace$Model;

.field public static final enum RGB:Landroid/graphics/ColorSpace$Model;

.field public static final enum XYZ:Landroid/graphics/ColorSpace$Model;


# instance fields
.field private final mComponentCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 827
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "RGB"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 833
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "XYZ"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    .line 839
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "LAB"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    .line 846
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "CMYK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v6}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    .line 821
    new-array v0, v6, [Landroid/graphics/ColorSpace$Model;

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "componentCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 850
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 851
    iput p3, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    .line 852
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Model;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 821
    const-class v0, Landroid/graphics/ColorSpace$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Model;
    .locals 1

    .line 821
    sget-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method


# virtual methods
.method public getComponentCount()I
    .locals 1

    .line 861
    iget v0, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    return v0
.end method
