.class public Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;
.super Ljava/lang/Object;
.source "EventRecordUpdate.java"


# instance fields
.field private final mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;


# direct methods
.method public constructor <init>(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expense"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-void
.end method


# virtual methods
.method public getRecord()Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;->mRecord:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-object v0
.end method
