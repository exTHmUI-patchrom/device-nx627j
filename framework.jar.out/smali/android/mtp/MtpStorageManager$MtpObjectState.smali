.class final enum Landroid/mtp/MtpStorageManager$MtpObjectState;
.super Ljava/lang/Enum;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MtpObjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/mtp/MtpStorageManager$MtpObjectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 109
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 110
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 111
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ADDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 112
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_REMOVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 113
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ONESHOT_ADD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 114
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ONESHOT_DEL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v1, v0, v7

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method public static values()[Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    .line 108
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-virtual {v0}, [Landroid/mtp/MtpStorageManager$MtpObjectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method
