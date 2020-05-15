.class Landroid/view/SurfaceView$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field mBackgroundControl:Landroid/view/SurfaceControl;

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Ljava/lang/String;ZLandroid/view/SurfaceControl$Builder;)V
    .locals 3
    .param p1, "this$0"    # Landroid/view/SurfaceView;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "opaque"    # Z
    .param p4, "b"    # Landroid/view/SurfaceControl$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1133
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    .line 1134
    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;)V

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 1130
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background for -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1137
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1138
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1140
    iput-boolean p3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 1141
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView$SurfaceControlWithBackground;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceView$SurfaceControlWithBackground;
    .param p1, "x1"    # I

    .line 1127
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setBackgroundColor(I)V

    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 4
    .param p1, "bgColor"    # I

    .line 1250
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 1251
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1253
    .local v0, "colorComponents":[F
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1255
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setColor([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1258
    nop

    .line 1259
    return-void

    .line 1257
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 1
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .line 1238
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1239
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1240
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 1
    .param p1, "barrier"    # Landroid/view/Surface;
    .param p2, "frame"    # J

    .line 1244
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 1245
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 1246
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1220
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1221
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1222
    return-void
.end method

.method public hide()V
    .locals 1

    .line 1206
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 1207
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 1208
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 1209
    return-void
.end method

.method public release()V
    .locals 1

    .line 1226
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1227
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 1228
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 1145
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1146
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1147
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 1176
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 1177
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 1178
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .line 1151
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1153
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1154
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    .line 1182
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1183
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1184
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .line 1200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1201
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1202
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .param p1, "isOpaque"    # Z

    .line 1188
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 1189
    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 1190
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 1191
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1158
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1159
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1160
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .line 1195
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 1196
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1164
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 1165
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 1166
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .line 1232
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1233
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1234
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 1170
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 1171
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 1172
    return-void
.end method

.method public show()V
    .locals 1

    .line 1213
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 1214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 1215
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 1216
    return-void
.end method

.method updateBackgroundVisibility()V
    .locals 1

    .line 1262
    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1267
    :goto_0
    return-void
.end method
