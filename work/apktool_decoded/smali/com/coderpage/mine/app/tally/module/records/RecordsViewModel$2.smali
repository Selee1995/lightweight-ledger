.class Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;
.super Landroid/text/style/AbsoluteSizeSpan;
.source "RecordsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->createAbsoluteSizeSpan(Ljava/lang/String;Landroid/graphics/Typeface;II)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

.field final synthetic val$color:I

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;IILandroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "size",
            "val$color",
            "val$typeface"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    iput p3, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;->val$color:I

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;->val$typeface:Landroid/graphics/Typeface;

    invoke-direct {p0, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPaint"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Landroid/text/style/AbsoluteSizeSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 174
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;->val$color:I

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel$2;->val$typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    return-void
.end method
