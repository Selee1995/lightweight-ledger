.class public Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;
.super Ljava/lang/Object;
.source "RecordCategoryGroup.java"


# instance fields
.field private amount:D

.field private categoryId:J

.field private count:J

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I

.field private uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->amount:D

    return-wide v0
.end method

.method public getCategoryId()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->categoryId:J

    return-wide v0
.end method

.method public getCount()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->count:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->type:I

    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 74
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->amount:D

    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryId"
        }
    .end annotation

    .line 58
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->categoryId:J

    return-void
.end method

.method public setCount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->count:J

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->type:I

    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueName"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->uniqueName:Ljava/lang/String;

    return-void
.end method
