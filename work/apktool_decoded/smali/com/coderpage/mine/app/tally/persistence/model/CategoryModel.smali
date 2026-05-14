.class public Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;
.super Ljava/lang/Object;
.source "CategoryModel.java"


# static fields
.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private accountId:J

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private order:I

.field private syncStatus:I

.field private type:I

.field private uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->uniqueName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->accountId:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->order:I

    return v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->syncStatus:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->type:I

    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 105
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->accountId:J

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

    .line 81
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 57
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->id:J

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

    .line 73
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 89
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->order:I

    return-void
.end method

.method public setSyncStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncStatus"
        }
    .end annotation

    .line 113
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->syncStatus:I

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

    .line 97
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->type:I

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

    .line 65
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->uniqueName:Ljava/lang/String;

    return-void
.end method
