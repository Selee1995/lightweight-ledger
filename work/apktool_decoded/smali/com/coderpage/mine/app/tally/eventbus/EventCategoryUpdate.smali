.class public Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;
.super Ljava/lang/Object;
.source "EventCategoryUpdate.java"


# instance fields
.field private category:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;


# direct methods
.method public constructor <init>(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;->category:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/eventbus/EventCategoryUpdate;->category:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-object v0
.end method
