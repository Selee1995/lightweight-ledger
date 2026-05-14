.class Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/update/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 710
    new-instance v0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 737
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->mProgress:F

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->barWidth:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->barColor:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->rimColor:I

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->fillRadius:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coderpage/lib/update/ProgressWheel$1;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 753
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 754
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 755
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 756
    iget-boolean p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->isSpinning:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 757
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 758
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget-boolean p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->linearProgress:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 764
    iget-boolean p2, p0, Lcom/coderpage/lib/update/ProgressWheel$WheelSavedState;->fillRadius:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
