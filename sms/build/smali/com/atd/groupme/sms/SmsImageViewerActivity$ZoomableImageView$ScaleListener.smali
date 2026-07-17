.class Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SmsImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleListener"
.end annotation


# instance fields
.field private final v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .line 225
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$000(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    .line 227
    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->maxScale:F
    invoke-static {v2}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$100(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v3}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 226
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v1

    div-float v1, v0, v1

    .line 229
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # setter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v2, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$202(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;F)F

    .line 230
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$300(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 230
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 232
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$300(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 233
    const/4 p1, 0x1

    return p1
.end method
