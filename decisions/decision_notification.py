#!/usr/bin/env python3
# Auto-generated decision tracker: decision_notification
# Created: 2025-08-16T21:13:09.048121

import json
from datetime import datetime
from pathlib import Path

class DecisionNotification:
    def __init__(self):
        self.keywords = []
        self.categories = []
        self.log_path = Path("/Users/MAC/Documents/projects/admin/decisions/logs")
        self.log_path.mkdir(exist_ok=True)
    
    def track(self, text: str, context: dict = None):
        """Track decisions based on keywords"""
        for keyword in self.keywords:
            if keyword.lower() in text.lower():
                self.log_decision(text, keyword, context)
                return True
        return False
    
    def log_decision(self, text: str, trigger: str, context: dict = None):
        """Log a detected decision"""
        decision = {
            "timestamp": datetime.now().isoformat(),
            "trigger": trigger,
            "text": text,
            "context": context or {},
            "tracker": "decision_notification"
        }
        
        log_file = self.log_path / f"decisions_20250816.json"
        
        if log_file.exists():
            with open(log_file, 'r') as f:
                decisions = json.load(f)
        else:
            decisions = []
        
        decisions.append(decision)
        
        with open(log_file, 'w') as f:
            json.dump(decisions, f, indent=2)

if __name__ == "__main__":
    tracker = DecisionNotification()
    # Test the tracker
    test_text = "We decided to use parallel processing for better performance"
    if tracker.track(test_text):
        print("✅ Decision tracked successfully")
    else:
        print("❌ No decision keywords found")
