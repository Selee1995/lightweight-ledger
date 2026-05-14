.class public Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;
.super Ljava/lang/Object;
.source "EventCategoryOrderChange.java"


# instance fields
.field private final categoryType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryType"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;->categoryType:I

    return-void
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryOrderChange;->categoryType:I

    return v0
.end method
