.class public final enum Landroid/os/RecoverySystem$CleanType;
.super Ljava/lang/Enum;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CleanType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/RecoverySystem$CleanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/RecoverySystem$CleanType;

.field public static final enum CLEAN_BOTH:Landroid/os/RecoverySystem$CleanType;

.field public static final enum CLEAN_CACHE:Landroid/os/RecoverySystem$CleanType;

.field public static final enum CLEAN_DATA:Landroid/os/RecoverySystem$CleanType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1218
    new-instance v0, Landroid/os/RecoverySystem$CleanType;

    const-string v1, "CLEAN_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/RecoverySystem$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/RecoverySystem$CleanType;->CLEAN_DATA:Landroid/os/RecoverySystem$CleanType;

    .line 1219
    new-instance v0, Landroid/os/RecoverySystem$CleanType;

    const-string v1, "CLEAN_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/os/RecoverySystem$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/RecoverySystem$CleanType;->CLEAN_CACHE:Landroid/os/RecoverySystem$CleanType;

    .line 1220
    new-instance v0, Landroid/os/RecoverySystem$CleanType;

    const-string v1, "CLEAN_BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/os/RecoverySystem$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/RecoverySystem$CleanType;->CLEAN_BOTH:Landroid/os/RecoverySystem$CleanType;

    .line 1217
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/RecoverySystem$CleanType;

    sget-object v1, Landroid/os/RecoverySystem$CleanType;->CLEAN_DATA:Landroid/os/RecoverySystem$CleanType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/RecoverySystem$CleanType;->CLEAN_CACHE:Landroid/os/RecoverySystem$CleanType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/RecoverySystem$CleanType;->CLEAN_BOTH:Landroid/os/RecoverySystem$CleanType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/os/RecoverySystem$CleanType;->$VALUES:[Landroid/os/RecoverySystem$CleanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/RecoverySystem$CleanType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1217
    const-class v0, Landroid/os/RecoverySystem$CleanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem$CleanType;

    return-object v0
.end method

.method public static values()[Landroid/os/RecoverySystem$CleanType;
    .locals 1

    .line 1217
    sget-object v0, Landroid/os/RecoverySystem$CleanType;->$VALUES:[Landroid/os/RecoverySystem$CleanType;

    invoke-virtual {v0}, [Landroid/os/RecoverySystem$CleanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/RecoverySystem$CleanType;

    return-object v0
.end method
