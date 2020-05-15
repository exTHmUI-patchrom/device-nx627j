.class final Landroid/app/NubiaThemeHelper$UnitEntry;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitEntry"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field scale:F

.field type:I

.field unit:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "unit"    # I
    .param p4, "scale"    # F

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    .line 372
    iput p2, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    .line 373
    iput p3, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    .line 374
    iput p4, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    .line 375
    return-void
.end method
